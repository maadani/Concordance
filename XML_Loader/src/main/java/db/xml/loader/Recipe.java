package db.xml.loader;

import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name="Query2")
public class Recipe {
 
	protected static final String RECIPE_NOTES = "Notes:";

	protected static final String RECIPE_SERVES = "Serves:";

	protected static final String RECIPE_INSTRUCTIONS = "Instructions:";

	protected static final String RECIPE_INGREDIENTS = "Ingredients:";

	protected static final String RECIPE_AUTHOR = "Author:";

	protected static final String RECIPE_COUNTRY = "Country:";

	protected static final String RECIPE_TYPE = "Type:";

	protected static final String RECIPE_NAME = "Name:";

	@Element(name="RecipeCountry")
	private String country;
	
	@Element(name="Name")
	private String name;
	
	@Element(name="Author")
	private String author;
	
	@Element(name="Ingredients")
	private String ingredients;
	
	@Element(name="Instructions")
	private String instructions;
	
	@Element(name="Serves")
	private int serves;
	
	@Element(name="Notes", required=false)
	private String notes;
	
	@Element(name="RecipeType")
	private String type;

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getIngredients() {
		return ingredients;
	}

	public void setIngredients(String ingredients) {
		this.ingredients = ingredients;
	}

	public String getInstructions() {
		return instructions;
	}

	public void setInstructions(String instructions) {
		this.instructions = instructions;
	}

	public int getServes() {
		return serves;
	}

	public void setServes(int serves) {
		this.serves = serves;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((author == null) ? 0 : author.hashCode());
		result = prime * result + ((country == null) ? 0 : country.hashCode());
		result = prime * result
				+ ((ingredients == null) ? 0 : ingredients.hashCode());
		result = prime * result
				+ ((instructions == null) ? 0 : instructions.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((notes == null) ? 0 : notes.hashCode());
		result = prime * result + serves;
		result = prime * result + ((type == null) ? 0 : type.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Recipe other = (Recipe) obj;
		if (author == null) {
			if (other.author != null)
				return false;
		} else if (!author.equals(other.author))
			return false;
		if (country == null) {
			if (other.country != null)
				return false;
		} else if (!country.equals(other.country))
			return false;
		if (ingredients == null) {
			if (other.ingredients != null)
				return false;
		} else if (!ingredients.equals(other.ingredients))
			return false;
		if (instructions == null) {
			if (other.instructions != null)
				return false;
		} else if (!instructions.equals(other.instructions))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (notes == null) {
			if (other.notes != null)
				return false;
		} else if (!notes.equals(other.notes))
			return false;
		if (serves != other.serves)
			return false;
		if (type == null) {
			if (other.type != null)
				return false;
		} else if (!type.equals(other.type))
			return false;
		return true;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append(RECIPE_NAME).append("\n").append(name).append("\n")
				.append(RECIPE_TYPE).append("\n").append(type).append("\n")
				.append(RECIPE_COUNTRY).append("\n").append(country).append("\n")
				.append(RECIPE_AUTHOR).append("\n").append(author).append("\n")
				.append(RECIPE_INGREDIENTS).append("\n").append(ingredients).append("\n")
				.append(RECIPE_INSTRUCTIONS).append("\n").append(instructions).append("\n")
				.append(RECIPE_SERVES).append("\n").append(serves).append("\n")
				.append(RECIPE_NOTES).append("\n").append(notes).append("\n")
				;
		return builder.toString();
	}
	
}
