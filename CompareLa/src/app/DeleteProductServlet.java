package app;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.*;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyService;

import entity.*;

@SuppressWarnings("serial")
public class DeleteProductServlet extends HttpServlet {
	
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		try {
			resp.setContentType("text/plain");
			
			String productID = req.getParameter("productID");
			
			Objectify ofy = ObjectifyService.begin();
			
			if (productID==null || productID.isEmpty() || Integer.parseInt(productID)==0) {
				String redirectURL = "../compareflip.jsp?check=true";
				resp.sendRedirect(redirectURL);
				return;
			} else {
			
				List<ComparedProduct> list = ComparedProductList.getAllProducts();
				for (ComparedProduct cp : list) {
					if (cp.getID() == Integer.parseInt(productID)) {
						OfyService.ofy().delete(cp);
					}
				}
				
				String redirectURL = "../compareflip.jsp?check=true&dialog=true";
				resp.sendRedirect(redirectURL);
			}
		} catch (Exception e ) {
			e.printStackTrace();
		}
		
		
	}
	
	}
