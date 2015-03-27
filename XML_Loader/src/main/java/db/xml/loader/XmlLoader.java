package db.xml.loader;

import java.io.File;

import org.simpleframework.xml.Serializer;
import org.simpleframework.xml.core.Persister;

import com.google.common.base.Charsets;
import com.google.common.io.Files;

public class XmlLoader {

	public static void main(String[] args){
		Serializer serializer = new Persister();
		
//		File example = new File("XMLLoader/initial_data","Query2.xml");
		try {						
			Recipes recipes = serializer.read(Recipes.class, XmlLoader.class.getClassLoader().getResourceAsStream("initial_data/Query2.xml"));
//			for (Recipe recipe : recipes.getList()) {
//				System.out.println(recipe.toString());
//			}
			Recipe recipe = recipes.getList().get(0);
			System.out.println("org recipe:\n" + recipe);
			final String fileName =  recipe.getName().replace(" ", "_") + "_" + recipe.getAuthor().replace(" ", "_") + "_" + recipe.getType().replace(" ", "_");
			System.out.println("fileName: " + fileName);
			final File dest = new File(fileName + ".txt");
			Files.write(recipe.toString(), dest, Charsets.UTF_8);
			System.out.println("Done writing to file");
			Recipe recipeFromText = RecipeTextLoader.readRecipeFromText(dest.toPath());
			System.out.println("final recipe:\n" + recipeFromText);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
