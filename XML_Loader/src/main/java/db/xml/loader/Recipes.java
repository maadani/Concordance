package db.xml.loader;

import java.util.List;

import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root(name = "dataroot")
public class Recipes {

	@Attribute
	private String generated;

	@ElementList(inline = true)
	private List<Recipe> list;

	public List<Recipe> getList() {
		return list;
	}

	public void setList(List<Recipe> list) {
		this.list = list;
	}

}
