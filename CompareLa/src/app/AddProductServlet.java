package app;

import java.io.IOException;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.*;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyService;

import entity.*;

@SuppressWarnings("serial")
public class AddProductServlet extends HttpServlet {
	
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
		
		String productID = req.getParameter("productID");
		//System.out.println(productID);
		Objectify ofy = ObjectifyService.begin();
		
		ComparedProduct cp = new ComparedProduct(Integer.parseInt(productID));
		
		ofy.put(cp);
		
		//String redirectURL = "../whatsnew.jsp?check=true";
		String referer = req.getHeader("Referer");
		
		if (referer.contains("whatsnew")) {
			resp.sendRedirect(referer+"?check=true&dialog=true");
		} else {
			resp.sendRedirect(referer+"&check=true&dialog=true");
		}
	}
	
	}
