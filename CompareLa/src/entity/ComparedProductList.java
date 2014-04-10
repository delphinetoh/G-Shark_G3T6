package entity;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import app.OfyService;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyService;
import com.googlecode.objectify.Query;


public class ComparedProductList {
	
	public ComparedProductList() {
		
		
	}
	public static List<ComparedProduct> getAllProducts() {
		
		Objectify ofy = OfyService.ofy();
		
		//Objectify ofy = ObjectifyService.begin();
		Query<ComparedProduct> p = ofy.query(ComparedProduct.class);
		
		List<ComparedProduct> productList = p.list();
		//System.out.println(productList.size());
		return productList;
	}
	
	public static void deleteAll(){
		List<ComparedProduct>productList=getAllProducts();
		//Objectify ofy = ObjectifyService.begin();
		Objectify ofy = OfyService.ofy();
		ofy.delete(productList);
	}
	
	public static List<ComparedProduct> getProductsByID(String id) {
		//Objectify ofy = OfyService.ofy();
		//List<ComparedProduct> iter = ComparedProduct.query(ComparedProduct.class).filter("productID", id).get();
		
		List<ComparedProduct> list = OfyService.ofy().query(ComparedProduct.class).filter("productID", id).list();
		/*
		ArrayList<ComparedProduct> list = new ArrayList<ComparedProduct>();
		System.out.println(iter.count());
		for (ComparedProduct c: iter) {
			System.out.println("Here:" + c.getID());
			list.add(c);
		}*/
		
		//System.out.println(iter.next().toString());
		//ComparedProduct cp = OfyService.ofy().query(ComparedProduct.class).filter("productID", id).get();
		//System.out.println(cp.getID());
		return list;
	}

}
