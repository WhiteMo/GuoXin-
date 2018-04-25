package Bean;

public class GoodSort {
	/**
	 * 分类id
	 */
	public String id;
	
	/**
	 * 分类名字
	 */
	public String name;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "GoodSort [id=" + id + ", name=" + name + "]";
	}
	
	
}
