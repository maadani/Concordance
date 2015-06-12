package db.xml.loader;

import java.io.File;
import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.google.common.base.Charsets;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import com.google.common.primitives.Ints;

public class RecipeTextLoader {
	
	public static void main(String[] args) {
		try {
			loadRecipeFilesToDB(new File(XmlLoader.TXT_FILES_PATH).toPath());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private static Set<String> recipeKey = new HashSet<String>();
	static {
		recipeKey.add(Recipe.RECIPE_TYPE);
		recipeKey.add(Recipe.RECIPE_SERVES);
		recipeKey.add(Recipe.RECIPE_NOTES);
		recipeKey.add(Recipe.RECIPE_NAME);
		recipeKey.add(Recipe.RECIPE_INSTRUCTIONS);
		recipeKey.add(Recipe.RECIPE_INGREDIENTS);
		recipeKey.add(Recipe.RECIPE_COUNTRY);		
		recipeKey.add(Recipe.RECIPE_AUTHOR);
	}
	public static Recipe readRecipeFromText(Path path){
				
		Recipe recipe = new Recipe();
		try {			
			List<String> lines = Files.readAllLines(path, Charsets.UTF_8);
			StringBuilder sb =new StringBuilder();
			String fieldName = null;			
			for (String line : lines) {
				if(!Strings.isNullOrEmpty(line)){
					if(recipeKey.contains(line)){
						handleCurrentField(recipe, fieldName, sb);
						sb = new StringBuilder();
						fieldName = new String(line);						
					}
					else {
						sb.append(line).append("\n");						
					}
				}				
			}
			handleCurrentField(recipe, fieldName, sb);			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			recipe = null;
		}			
		return recipe;
	}
	
	private static void handleCurrentField(Recipe recipe, String fieldName, StringBuilder sb) {
		if(Strings.isNullOrEmpty(fieldName)){
			return;
		}
		else if(fieldName.startsWith(Recipe.RECIPE_NAME)){
			recipe.setName(sb.toString());
		}
		else if(fieldName.startsWith(Recipe.RECIPE_AUTHOR)){
			recipe.setAuthor(sb.toString());
		}
		else if(fieldName.startsWith(Recipe.RECIPE_COUNTRY)){
			recipe.setCountry(sb.toString());
		}
		else if(fieldName.startsWith(Recipe.RECIPE_INSTRUCTIONS)){
			recipe.setInstructions(sb.toString());
		}
		else if(fieldName.startsWith(Recipe.RECIPE_NOTES)){
			recipe.setNotes(sb.toString());
		}
		else if(fieldName.startsWith(Recipe.RECIPE_SERVES)){
			final Integer value = Ints.tryParse(sb.deleteCharAt(sb.length()-1).toString());
			recipe.setServes(value == null ? 0 : value);
		}
		else if(fieldName.startsWith(Recipe.RECIPE_INGREDIENTS)){			
			recipe.setIngredients(sb.toString());
		}			
		else if(fieldName.startsWith(Recipe.RECIPE_TYPE)){
			recipe.setType(sb.toString());
		}		
		
	}
	
	public static int loadRecipeFilesToDB(Path path) throws IOException{
		Preconditions.checkNotNull(path, "path");
		final ArrayList<Recipe> recipes = new ArrayList<Recipe>();
		if(Files.isDirectory(path)){
			Files.walkFileTree(path, new MySimpleFileVisitor(new OnVisitFileListener() {
				
				public void onFileVisit(Path path) {
					recipes.add(readRecipeFromText(path));
				}
			}));
		}
		else {
			System.out.println("file: " + path.toString() + " is not a directory");
		}
		
		System.out.println("recipes.size: " + recipes.size());
		return recipes.size();
	}
	
	private static class MySimpleFileVisitor extends SimpleFileVisitor<Path> {
		
		private final OnVisitFileListener mVisitFileListener;
		
		public MySimpleFileVisitor(OnVisitFileListener visitFileListener) {
			super();
			this.mVisitFileListener = visitFileListener;
		}

		public FileVisitResult preVisitDirectory(Path dir,
				BasicFileAttributes attrs) throws IOException {
			// TODO Auto-generated method stub
			return FileVisitResult.CONTINUE;
		}

		public FileVisitResult visitFile(Path file,
				BasicFileAttributes attrs) throws IOException {
			mVisitFileListener.onFileVisit(file);			
			return FileVisitResult.CONTINUE;
		}

		public FileVisitResult visitFileFailed(Path file,
				IOException exc) throws IOException {
			System.err.println("Problem in file: " + file + ". Error: " + exc);
			return FileVisitResult.TERMINATE;
		}		
	}
	
	interface OnVisitFileListener {
		void onFileVisit(Path path);
	}
}
