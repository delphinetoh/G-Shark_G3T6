package app;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class LoginServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		processRequest(req, resp);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		processRequest(req, resp);
	}

	public void processRequest(HttpServletRequest req, HttpServletResponse res)  
			throws ServletException, IOException {
		
		res.setContentType("text/plain");
		
		HttpSession session = req.getSession();

		String passcode = req.getParameter("passcode");
		String name = req.getParameter("name");
		
		session.setAttribute("name", name);
		
		if (passcode != null) {
			if (passcode.equals("flip")) {
				session.setAttribute("type","flip");
				String redirectURL = "instructions.jsp?name=" + name + "&type=flip"; 
			    res.sendRedirect(redirectURL);
			} else if (passcode.equals("button")) {
				session.setAttribute("type","button");
				String redirectURL = "instructions.jsp?name=" + name + "&type=button"; 
			    res.sendRedirect(redirectURL);
			} else {
				String redirectURL = "login.jsp?login=fail"; 
			    res.sendRedirect(redirectURL);
			}

		} else {
			String redirectURL = "login.jsp?login=fail"; 
		    res.sendRedirect(redirectURL);
		}

	}
}
