package app;

import java.io.IOException;
import javax.servlet.http.*;
import entity.*;

@SuppressWarnings("serial")
public class ProcessQuestionnaireServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
		HttpSession session = req.getSession();
		String name = (String) session.getAttribute("name");
		
		String q1 = req.getParameter("q1");
		String q2 = req.getParameter("q2");
		String q3 = req.getParameter("q3");
		String q4 = req.getParameter("q4");
		String q5 = req.getParameter("q5");
		String q6 = req.getParameter("q6");
		
		Questionnaire q = new Questionnaire(name, q1, q2, q3, q4, q5, q6);
		QuestionnaireDAO.add(q);
		
		String redirectURL = "thankyou.jsp"; 
		
		resp.sendRedirect(redirectURL);
	
	}
}
