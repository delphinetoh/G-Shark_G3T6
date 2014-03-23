package entity;

import javax.persistence.Id;

public class Product {
	
	@Id //id fields can be long, Long or String. Only Long automatically generates keys when it s null
    Long id;
	private String productID;
	private String productName;
	private String gender;
	private String brand;
	private String description;
	private int price;
	private int likes;
	private int ratings;
	private String[] reviewList;
	private String imgRef;
	
	public Product() {
		
	}
	
	public Product(String productID, String productName, String gender, String brand, String description, int price, int likes, int ratings, String[] reviewList, String imgRef) {
		this.productID = productID;
		this.productName = productName;
		this.gender = gender;
		this.brand = brand;
		this.description = description;
		this.price = price;
		this.likes = likes;
		this.ratings = ratings;
		this.reviewList = reviewList;
		this.imgRef = imgRef;
	}
	
	
	public String getProductID() {
		return productID;
	}
	
	public String getProductName() {
		return productName;
	}
	
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	public String getGender() {
		return gender;
	}
	
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getBrand() {
		return brand;
	}
	
	public void setBrand(String brand) {
		this.brand = brand;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public int getPrice() {
		return price;
	}
	
	public void setPrice(int price) {
		this.price = price;
	}
	
	public int getLikes() {
		return likes;
	}
	
	public void setLikes(int likes) {
		this.likes = likes;
	}
	
	public int getRatings() {
		return ratings;
	}
	
	public void setRatings(int ratings) {
		this.ratings = ratings;
	}
	
	public String[] getReviewList() {
		return reviewList;
	}
	
	public String getImgRef() {
		return imgRef;
	}
	
	public void setImgRef(String imgRef) {
		this.imgRef = imgRef;
	}
	
}