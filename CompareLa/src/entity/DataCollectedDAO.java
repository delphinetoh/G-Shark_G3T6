package entity;

import java.util.ArrayList;
import java.util.List;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyService;
import com.googlecode.objectify.Query;

public class DataCollectedDAO {
	
	static {
        ObjectifyService.register(DataCollected.class);
	}
	
	public DataCollectedDAO() {
	        
	}
	
	public static void add(DataCollected loc){
		Objectify ofy = ObjectifyService.begin();
		ofy.put(loc);
	}
	
	public static void addList(ArrayList<DataCollected> dataCollectedList){
		Objectify ofy = ObjectifyService.begin();
		ofy.put(dataCollectedList);
	}
	
	public static List<DataCollected> retrieveAll(){
		Objectify ofy = ObjectifyService.begin();
		Query<DataCollected> q = ofy.query(DataCollected.class);
		List<DataCollected> dataCollectedList = q.list();
		return dataCollectedList;
	}
	
	public static void deleteAll(){
		List<DataCollected>dataCollectedList=retrieveAll();
		Objectify ofy = ObjectifyService.begin();
		ofy.delete(dataCollectedList);
	}
	
}