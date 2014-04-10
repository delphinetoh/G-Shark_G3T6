package entity;

import java.util.ArrayList;
import java.util.List;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyService;
import com.googlecode.objectify.Query;

public class QuestionnaireDAO {
	
	static {
        ObjectifyService.register(Questionnaire.class);
	}
	
	public QuestionnaireDAO() {
	        
	}
	
	public static void add(Questionnaire loc){
		Objectify ofy = ObjectifyService.begin();
		ofy.put(loc);
	}
	
	public static void addList(ArrayList<Questionnaire> questionnaireList){
		Objectify ofy = ObjectifyService.begin();
		ofy.put(questionnaireList);
	}
	
	public static List<Questionnaire> retrieveAll(){
		Objectify ofy = ObjectifyService.begin();
		Query<Questionnaire> q = ofy.query(Questionnaire.class);
		List<Questionnaire> questionnaireList = q.list();
		return questionnaireList;
	}
	
	public static void deleteAll(){
		List<Questionnaire>questionnaireList=retrieveAll();
		Objectify ofy = ObjectifyService.begin();
		ofy.delete(questionnaireList);
	}
	
}