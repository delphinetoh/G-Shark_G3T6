package app;

import java.io.IOException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class ProcessTaskServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		resp.setContentType("text/plain");
		HttpSession session = req.getSession();
		
		String taskDuration = req.getParameter("task-duration");
		
		String type = req.getParameter("type");
		String task = req.getParameter("task");
		String answer = req.getParameter("answer");
		
		String nameOfAttribute = type + "-" + task;
		session.setAttribute(nameOfAttribute, taskDuration);
		
		System.out.println(nameOfAttribute + ": " + taskDuration);
		
		
		if (task.equals("task1")) {
			if (type.equals("flip")) {
				//type in correct ans here
				if (answer.equals("marc_jacobs_watch")) {
					session.setAttribute("flip-task1-ans","1");
				} else {
					session.setAttribute("flip-task1-ans","0");
				}
 			} else if (type.equals("button")){
				//type in correct ans here
				if (answer.equals("same")) {
					session.setAttribute("button-task1-ans","1");
				} else {
					session.setAttribute("button-task1-ans","0");
				}				
			}
			String redirectURL = "layout-" + type + "-task2.jsp"; 
		    resp.sendRedirect(redirectURL);
		} else if (task.equals("task2")) {
			if (type.equals("flip")) {
				//type in correct ans here
				if (answer.equals("ralph_lauren_blue")) {
					session.setAttribute("flip-task2-ans","1");
				} else {
					session.setAttribute("flip-task2-ans","0");
				}							
				
			} else if (type.equals("button")){
				//type in correct ans here
				if (answer.equals("herschel_black")) {
					session.setAttribute("button-task2-ans","1");
				} else {
					session.setAttribute("button-task2-ans","0");
				}					
			}
			String redirectURL = "layout-" + type + "-task3.jsp"; 
		    resp.sendRedirect(redirectURL);
		}  else if (task.equals("task3")) {
			if (type.equals("flip")) {
				//type in correct ans here
				if (answer.equals("cheap_monday_monochrome")) {
					session.setAttribute("flip-task3-ans","1");
				} else {
					session.setAttribute("flip-task3-ans","0");
				}					
			} else if (type.equals("button")){
				//type in correct ans here
				if (answer.equals("same")) {
					session.setAttribute("button-task3-ans","1");
				} else {
					session.setAttribute("button-task3-ans","0");
				}					
			}
			String startType = (String) session.getAttribute("type");
			String redirectURL = "";
			
			if (type.equals(startType)) {
				if (type.equals("flip")) {
					redirectURL = "layout-button.jsp"; 
				} else {
					redirectURL = "layout-flip.jsp"; 
				}
			    
			} else {
				redirectURL = "questionnaire.jsp"; 
			}
			resp.sendRedirect(redirectURL);
		} 
	}
}
