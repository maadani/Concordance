package db.xml.loader;

import java.io.File;
import java.util.Iterator;

import org.simpleframework.xml.Serializer;
import org.simpleframework.xml.core.Persister;

import com.google.common.base.Charsets;
import com.google.common.base.Strings;
import com.google.common.io.Files;

public class XmlLoader {

	public static void main(String[] args){
		Serializer serializer = new Persister();
		
		try {						
			Recipes recipes = serializer.read(Recipes.class, XmlLoader.class.getClassLoader().getResourceAsStream("initial_data/Query2.xml"));
			Recipe recipe = null;
			for(Iterator<Recipe> iterator = recipes.getList().iterator(); iterator.hasNext(); ){
				recipe = iterator.next();
				final String fileName =  removeSpecialChars(recipe.getName());// + "_" + removeSpecialChars(recipe.getAuthor()) + "_" + removeSpecialChars(recipe.getType());
				System.out.println("fileName: " + fileName);
				final File dest = new File("txt_files", fileName + ".txt");
				Files.write(recipe.toString(), dest, Charsets.UTF_8);
				System.out.println("Done writing to file");
			}
//			for(


			
			
			
			
//			Recipe recipeFromText = RecipeTextLoader.readRecipeFromText(dest.toPath());
//			System.out.println("final recipe:\n" + recipeFromText);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private static String removeSpecialChars(String name) {		
		if(Strings.isNullOrEmpty(name)){
			return "";
		}
		else {
			return name.replace(" ", "_").replace("\"", "").replace("\\", "-").replace("/", "").replace(File.pathSeparator,  "-").replace(":", "_");
		}
		
	}
}
