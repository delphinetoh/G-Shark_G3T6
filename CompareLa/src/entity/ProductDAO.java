package entity;

import java.util.ArrayList;
import java.util.List;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyService;
import com.googlecode.objectify.Query;

public class ProductDAO {
	
	static {
        ObjectifyService.register(Product.class);
	}
	
	public ProductDAO() {
	        
	}
	
	public static void add(Product product){
		Objectify ofy = ObjectifyService.begin();
		ofy.put(product);
	}
	
	public static void addList(ArrayList<Product> productList){
		Objectify ofy = ObjectifyService.begin();
		ofy.put(productList);
	}
	
	public static List<Product> retrieveAll(){
		Objectify ofy = ObjectifyService.begin();
		Query<Product> q = ofy.query(Product.class);
		List<Product> productList = q.list();
		return productList;
	}
	
	public static void deleteAll(){
		List<Product>productList=retrieveAll();
		Objectify ofy = ObjectifyService.begin();
		ofy.delete(productList);
	}
	
}