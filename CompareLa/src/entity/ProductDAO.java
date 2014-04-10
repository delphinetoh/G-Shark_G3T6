package entity;

import java.util.ArrayList;
import java.util.List;

import app.OfyService;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyService;
import com.googlecode.objectify.Query;

public class ProductDAO {

	public ProductDAO() {
	        
	}
	
	public static void add(Product product){
		Objectify ofy = OfyService.ofy();
		ofy.put(product);
	}
	
	public static void addList(ArrayList<Product> productList){
		Objectify ofy = OfyService.ofy();
		ofy.put(productList);
	}
	
	public static List<Product> retrieveAll(){
		//Objectify ofy = ObjectifyService.begin();
		Objectify ofy = OfyService.ofy();
		Query<Product> q = ofy.query(Product.class);
		List<Product> productList = q.list();
		return productList;
	}
	
	public static void deleteAll(){
		List<Product>productList=retrieveAll();
		//Objectify ofy = ObjectifyService.begin();
		Objectify ofy = OfyService.ofy();
		ofy.delete(productList);
	}
	
}