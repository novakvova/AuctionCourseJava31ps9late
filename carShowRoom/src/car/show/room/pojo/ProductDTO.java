package car.show.room.pojo;

public class ProductDTO {

	private String name;

	private String price;

	private String description;

	private String image;

	private String category;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrice() {
		return price;
	}

	@Override
	public String toString() {
		return "ProductDTO [name=" + name + ", price=" + price + ", description=" + description + ", image=" + image
				+ ", category=" + category + "]";
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

}
