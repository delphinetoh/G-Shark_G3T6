package entity;

import javax.persistence.Id;

public class DataCollected {
	
	@Id //id fields can be long, Long or String. Only Long automatically generates keys when it s null
    Long id;
	private String participantName;
	private String buttonTask1Time;
	private String buttonTask1Ans;
	private String buttonTask2Time;
	private String buttonTask2Ans;
	private String buttonTask3Time;
	private String buttonTask3Ans;
	private String flipTask1Time;
	private String flipTask1Ans;
	private String flipTask2Time;
	private String flipTask2Ans;
	private String flipTask3Time;
	private String flipTask3Ans;
	
	
	public DataCollected() {
		
	}
	
	public DataCollected(String participantName, String buttonTask1Time, String buttonTask1Ans, String buttonTask2Time,  String buttonTask2Ans, String buttonTask3Time, String buttonTask3Ans,
			String flipTask1Time, String flipTask1Ans, String flipTask2Time,  String flipTask2Ans, String flipTask3Time, String flipTask3Ans) {
		this.participantName = participantName;
		this.buttonTask1Time = buttonTask1Time;
		this.buttonTask1Ans = buttonTask1Ans;
		this.buttonTask2Time = buttonTask2Time;
		this.buttonTask2Ans = buttonTask2Ans;
		this.buttonTask3Time = buttonTask3Time;
		this.buttonTask3Ans = buttonTask3Ans;
		this.flipTask1Time = flipTask1Time;
		this.flipTask1Ans = flipTask1Ans;
		this.flipTask2Time = flipTask2Time;
		this.flipTask2Ans = flipTask2Ans;
		this.flipTask3Time = flipTask3Time;
		this.flipTask3Ans = flipTask3Ans;
	}
	
	public String getParticipantName() {
		return participantName;
	}
	
	public String getButtonTask1Time() {
		return buttonTask1Time;
	}
	
	public String getButtonTask1Ans() {
		return buttonTask1Ans;
	}
	
	public String getButtonTask2Time() {
		return buttonTask2Time;
	}
	
	public String getButtonTask2Ans() {
		return buttonTask2Ans;
	}
	
	public String getButtonTask3Time() {
		return buttonTask3Time;
	}
	
	public String getButtonTask3Ans() {
		return buttonTask3Ans;
	}
	
	public String getFlipTask1Time() {
		return flipTask1Time;
	}
	
	public String getFlipTask1Ans() {
		return flipTask1Ans;
	}
	
	public String getFlipTask2Time() {
		return flipTask2Time;
	}
	
	public String getFlipTask2Ans() {
		return flipTask2Ans;
	}
	
	public String getFlipTask3Time() {
		return flipTask3Time;
	}
	
	public String getFlipTask3Ans() {
		return flipTask3Ans;
	}
	
	
	
	
	
}