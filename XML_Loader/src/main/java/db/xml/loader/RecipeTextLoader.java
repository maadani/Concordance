package db.xml.loader;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.google.common.base.Charsets;
import com.google.common.base.Strings;
import com.google.common.primitives.Ints;

public class RecipeTextLoader {

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
}
