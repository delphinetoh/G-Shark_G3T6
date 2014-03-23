package datamanager;

import java.io.*;
import java.util.*;

import entity.*;

public class ProductDM {
	
	public ProductDM() {
		new ProductDAO();
	}
	
	public static void addProducts(ArrayList<Product> productList) {
		ProductDAO.addList(productList);
	}
	
	public static void addLocations(ArrayList<Location> locList) {
		LocationDAO.addList(locList);
	}
	
	public static void addResults(ArrayList<Results> resultsList) {
		ResultsDAO.addList(resultsList);
	}
	
	public static Location getLocation(String ID) {
		List<Location> locList = LocationDAO.retrieveAll();
		for (Location loc : locList) {
			if (loc.getProductID().equals(ID)) {
				return loc;
			}
		}
		return null;
	}
	
	public static Product getProductBasedOnID(String id) {
		List<Product> allProducts = ProductDAO.retrieveAll();
		for (Product p : allProducts) {
			if (p.getProductID().equals(id)) {
				return p;
			}
		}
		return null;
	}
	
	public static String[] getPriceResultsBasedOnID(String id) {
		List<Results> allResults = ResultsDAO.retrieveAll();
		
		for (Results r : allResults) {
			if (r.getListID().equals(id)) {
				return r.getPriceList();
			}
		}
		return null;
	}
	
	public static String[] getLikesResultsBasedOnID(String id) {
		List<Results> allResults = ResultsDAO.retrieveAll();
		
		for (Results r : allResults) {
			if (r.getListID().equals(id)) {
				return r.getLikesList();
			}
		}
		return null;
	}
	
	public static void loadResults() {
		//clear datastore first in case of duplicated loading
		ResultsDAO.deleteAll();
		
		//data file
		File file = new File("results.txt");
		
		ArrayList<Results> resultsList = new ArrayList<Results>();
		
		 // Initialize some variables to be used shortly.
	    String s = null;
	    List<String> a = new ArrayList<String>();
		
		try {
	        // Use new BufferedReader 'in' to read in 'f'.
	        BufferedReader in = new BufferedReader(new FileReader(file));
	
	        int row = 1;
	        // Read the first line into String 's'. 
	        s = in.readLine();
	        
	        // So long as 's' is NOT null...
	        while(s != null) {
	            // Split the current line, using semi-colons as delimiters, and store in 'a'.
	            // Convert 'a' to array 'aSplit', then add 'aSplit' to 'l'.
	            a = Arrays.asList(s.split("\t"));
	            String[] aSplit = a.toArray(new String[5]);
	            
	            if (row%2!=0) {
	            	String listID = aSplit[0];

		            String p1 = aSplit[1];
		            
		            String p2 = aSplit[2];
		            
		            String p3 = aSplit[3];

		            String p4 = aSplit[4];
		            
		            String[] priceList = new String[5];
		            priceList[0] = p1;
		            
		            if (p2 != null && !p2.equals("")) {
		            	priceList[1] = p2;
		            }
		            
		            if (p3 != null && !p3.equals("")) {
		            	priceList[2] = p3;
		            }
		            
		            if (p4 != null && !p4.equals("")) {
		            	priceList[3] = p4;
		            }
		            
		            Results newR = new Results(listID, priceList);
		            resultsList.add(newR);
	            } else {
		            String listID = aSplit[0];
		            
		            String p1 = aSplit[1];
		            
		            String p2 = aSplit[2];
		            
		            String p3 = aSplit[3];
					
		            String p4 = aSplit[4];
		            
		            
		            String[] likesList = new String[5];
		            likesList[0] = p1;
		            
		            if (p2 != null && !p2.equals("")) {
		            	likesList[1] = p2;
		            }
		            
		            if (p3 != null && !p3.equals("")) {
		            	likesList[2] = p3;
		            }
		            
		            if (p4 != null && !p4.equals("")) {
		            	likesList[3] = p4;
		            }
		            
		            
					Results retrievedR = resultsList.get(Integer.parseInt(listID)-1);
					retrievedR.setLikesList(likesList);
					resultsList.set(Integer.parseInt(listID)-1, retrievedR);
	            }
				
	            // Read next line of file.
	            s = in.readLine();
	            row++;
	        }
	
	        // Once finished, close 'in'.
	        in.close();
	        
	      //add all products to datastore
	      addResults(resultsList);
	        
	        
	    } catch (IOException e) {
	        // If problems occur during 'try' code, catch exception and include StackTrace.
	        e.printStackTrace();
	    }
		
	}
	
	public static void readFile() {
		//clear datastore first in case of duplicated loading
		ProductDAO.deleteAll();
		LocationDAO.deleteAll();
		
		//data file
		File file = new File("data.txt");
		
		//arraylist to store all products to load into datastore
		ArrayList<Product> productList = new ArrayList<Product>();
	    
		//arraylist to store all locations to load into datastore
		ArrayList<Location> locList = new ArrayList<Location>();
		
	    // Initialize some variables to be used shortly.
	    String s = null;
	    List<String> a = new ArrayList<String>();
		
		try {
	        // Use new BufferedReader 'in' to read in 'f'.
	        BufferedReader in = new BufferedReader(new FileReader(file));
	
	        // Read the first line into String 's'. 
	        s = in.readLine();
	
	        // So long as 's' is NOT null...
	        while(s != null) {
	            // Split the current line, using semi-colons as delimiters, and store in 'a'.
	            // Convert 'a' to array 'aSplit', then add 'aSplit' to 'l'.
	            a = Arrays.asList(s.split("\t"));
	            String[] aSplit = a.toArray(new String[23]);
	            
	            String id = aSplit[0];
	            
	            String name = aSplit[1];
	            //System.out.println("0");
	            
	            String gender = aSplit[2];
	            //System.out.println("1");
	            
				String brand = aSplit[3];
				//System.out.println("2");
			
				String description = aSplit[4];
				//System.out.println("3");
				
				int price = Integer.parseInt(aSplit[5]);
				//System.out.println("4");
				
				String mall1 = aSplit[6];
				//System.out.println("5");
				
				String store1 = aSplit[7];
				//System.out.println("6");
				
				int dist1 = Integer.parseInt(aSplit[8]);
				//System.out.println("7");
				
				int stock1 = Integer.parseInt(aSplit[9]);
				//System.out.println("8");
				
				String mall2 = aSplit[10];
				//System.out.println("9");
				
				String store2 = aSplit[11];
				//System.out.println("10");
				
				int dist2 = Integer.parseInt(aSplit[12]);
				//System.out.println("11");
				
				int stock2 = Integer.parseInt(aSplit[13]);
				//System.out.println("12");
				
				String mall3 = aSplit[14];
				//System.out.println("13");
				
				String store3 = aSplit[15];
				//System.out.println("14");
				
				int dist3 = Integer.parseInt(aSplit[16]);
				//System.out.println("15");
				
				int stock3 = Integer.parseInt(aSplit[17]);
				//System.out.println("16");
				
				Location newLoc = new Location(id, mall1, store1, dist1, stock1, mall2, store2, dist2, stock2, mall3, store3, dist3, stock3);
				locList.add(newLoc);
				
				int likes = Integer.parseInt(aSplit[18]);
				//System.out.println("17");
				
				int ratings = Integer.parseInt(aSplit[19]);
				//System.out.println("18");
				
				String[] reviewList = new String[2];
				reviewList[0] = aSplit[20];
				//System.out.println("19");
				reviewList[1] = aSplit[21];
				//System.out.println("20");
				
				String imgRef = aSplit[22];
				//System.out.println("21");
				
				Product newP = new Product(id, name, gender, brand, description, price, likes, ratings, reviewList, imgRef);
				productList.add(newP);
				
	            // Read next line of file.
	            s = in.readLine();
	        }
	
	        // Once finished, close 'in'.
	        in.close();
	        
	        //add all products to datastore
	        addProducts(productList);
	        
	        //add all locations to datastore
	        addLocations(locList);
	        
	    } catch (IOException e) {
	        // If problems occur during 'try' code, catch exception and include StackTrace.
	        e.printStackTrace();
	    }
	}
}