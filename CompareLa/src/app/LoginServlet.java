package app;

import java.io.IOException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class LoginServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
		
		String passcode = req.getParameter("passcode");
		if (passcode.equals("secretcode")) {
			
			String redirectURL = "../welcome.jsp"; 
		    resp.sendRedirect(redirectURL);
		}
	}
}
