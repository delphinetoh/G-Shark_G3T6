package entity;

import javax.persistence.Id;

public class Location {
	
	@Id //id fields can be long, Long or String. Only Long automatically generates keys when it s null
    Long id;
	private String productID;
	private String shoppingMall1;
	private String store1;
	private int dist1;
	private int stockLevel1;
	private String shoppingMall2;
	private String store2;
	private int dist2;
	private int stockLevel2;
	private String shoppingMall3;
	private String store3;
	private int dist3;
	private int stockLevel3;	
	
	public Location() {
		
	}
	
	public Location(String productID, String shoppingMall1, String store1, int dist1, int stockLevel1,String shoppingMall2, String store2, int dist2, int stockLevel2, String shoppingMall3, String store3, int dist3, int stockLevel3) {
		this.productID = productID;
		this.shoppingMall1 = shoppingMall1;
		this.store1 = store1;
		this.dist1 = dist1;
		this.stockLevel1 = stockLevel1;
		this.shoppingMall2 = shoppingMall2;
		this.store2 = store2;
		this.dist2 = dist2;
		this.stockLevel2 = stockLevel2;
		this.shoppingMall3 = shoppingMall3;
		this.store3 = store3;
		this.dist3 = dist3;
		this.stockLevel3 = stockLevel3;
	}
	
	public String getProductID() {
		return productID;
	}
	
	public String getShoppingMall1() {
		return shoppingMall1;
	}

	public String getShoppingMall2() {
		return shoppingMall2;
	}
	
	public String getShoppingMall3() {
		return shoppingMall3;
	}
	
	public String getStore1() {
		return store1;
	}
	
	public String getStore2() {
		return store2;
	}
	
	public String getStore3() {
		return store3;
	}
	
	public int getStockLevel1() {
		return stockLevel1;
	}

	public int getStockLevel2() {
		return stockLevel2;
	}
	
	public int getStockLevel3() {
		return stockLevel3;
	}
	
	public int getDist1() {
		return dist1;
	}

	public int getDist2() {
		return dist2;
	}
	
	public int getDist3() {
		return dist3;
	}
	
	
	
	
}