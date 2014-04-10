package entity;

import javax.persistence.Id;

public class Questionnaire {
	
	@Id //id fields can be long, Long or String. Only Long automatically generates keys when it s null
    Long id;
	private String participantName;
	private String q1;
	private String q2;
	private String q3;
	private String q4;
	private String q5;
	private String q6;
	
	
	public Questionnaire() {
		
	}
	
	public Questionnaire(String participantName, String q1, String q2, String q3, String q4,  String q5, String q6) {
		this.participantName = participantName;
		this.q1 = q1;
		this.q2 = q2;
		this.q3 = q3;
		this.q4 = q4;
		this.q5 = q5;
		this.q6 = q6;
	}
	
	public String getParticipantName() {
		return participantName;
	}
	
	public String getQ1() {
		return q1;
	}
	
	public String getQ2() {
		return q2;
	}
	
	public String getQ3() {
		return q3;
	}
	
	public String getQ4() {
		return q4;
	}
	
	public String getQ5() {
		return q5;
	}
	
	public String getQ6() {
		return q6;
	}

	
	
	
	
}