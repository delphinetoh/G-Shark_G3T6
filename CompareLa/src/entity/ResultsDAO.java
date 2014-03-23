package entity;

import java.util.ArrayList;
import java.util.List;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyService;
import com.googlecode.objectify.Query;

public class ResultsDAO {
	
	static {
        ObjectifyService.register(Results.class);
	}
	
	public ResultsDAO() {
	        
	}
	
	public static void add(Results result){
		Objectify ofy = ObjectifyService.begin();
		ofy.put(result);
	}
	
	public static void modify(Results result){
		Objectify ofy = ObjectifyService.begin();
		ofy.put(result);
	}
	
	public static void addList(ArrayList<Results> resultsList){
		Objectify ofy = ObjectifyService.begin();
		ofy.put(resultsList);
	}
	
	public static List<Results> retrieveAll(){
		Objectify ofy = ObjectifyService.begin();
		Query<Results> q = ofy.query(Results.class);
		List<Results> resultsList = q.list();
		return resultsList;
	}
	
	public static void deleteAll(){
		List<Results> resultsList = retrieveAll();
		Objectify ofy = ObjectifyService.begin();
		ofy.delete(resultsList);
	}
	
}