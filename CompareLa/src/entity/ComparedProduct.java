package entity;

import com.googlecode.objectify.ObjectifyService;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Indexed;

import javax.persistence.Id;

public class ComparedProduct {
	
	@Id
	Long id;
	@Indexed int productID;
	
	
	public ComparedProduct() {
	        
	}
	
	
	public ComparedProduct(int productID) {
		
		this.productID = productID;
	}
	
	public int getID() {
		return productID;
	}
	
}
