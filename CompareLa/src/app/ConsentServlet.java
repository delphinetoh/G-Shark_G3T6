package app;

import java.io.IOException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class ConsentServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
		
		String agree = req.getParameter("agree");
		String type = req.getParameter("type");
		
		if (agree != null) {
			if (agree.equals("yes")) {
				String redirectURL = "layout-" + type + ".jsp";
			    resp.sendRedirect(redirectURL);
			} else {
				String redirectURL = "bye.jsp"; 
			    resp.sendRedirect(redirectURL);
			}
		} else {
			String redirectURL = "bye.jsp"; 
		    resp.sendRedirect(redirectURL);
		}
	}
}
