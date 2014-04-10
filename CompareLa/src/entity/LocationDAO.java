package entity;

import java.util.ArrayList;
import java.util.List;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyService;
import com.googlecode.objectify.Query;

public class LocationDAO {

	
	public LocationDAO() {
	        
	}
	
	public static void add(Location loc){
		Objectify ofy = ObjectifyService.begin();
		ofy.put(loc);
	}
	
	public static void addList(ArrayList<Location> locList){
		Objectify ofy = ObjectifyService.begin();
		ofy.put(locList);
	}
	
	public static List<Location> retrieveAll(){
		Objectify ofy = ObjectifyService.begin();
		Query<Location> q = ofy.query(Location.class);
		List<Location> locList = q.list();
		return locList;
	}
	
	public static void deleteAll(){
		List<Location>locList=retrieveAll();
		Objectify ofy = ObjectifyService.begin();
		ofy.delete(locList);
	}
	
}