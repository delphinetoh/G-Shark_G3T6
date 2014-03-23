package entity;

import javax.persistence.Id;

public class Results {
	
	@Id //id fields can be long, Long or String. Only Long automatically generates keys when it s null
    Long id;
	private String listID;
	private String[] priceList;
	private String[] likesList;
	
	public Results() {
		
	}
	
	public Results(String listID, String[] priceList) {
		this.listID = listID;
		this.priceList = priceList;
	}	
	
	public Results(String listID, String[] priceList, String[] likesList) {
		this.listID = listID;
		this.priceList = priceList;
		this.likesList = likesList;
	}
	
	
	public String getListID() {
		return listID;
	}
	
	public String[] getPriceList() {
		return priceList;
	}
	
	public String[] getLikesList() {
		return likesList;
	}
	
	public void setLikesList(String[] likesList) {
		this.likesList = likesList;
	}
	
}