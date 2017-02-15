package example.servlets;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import example.beans.*;

public class MainServlet extends HttpServlet {
	public void doPost(HttpServletRequest request,
			HttpServletResponse response)throws ServletException,IOException{
		// you get this from form parameter:
		String currentTip = request.getParameter("tips");
		// create bean object using 1-arg constructor:
        Tips tips = new Tips(currentTip);
        
        // we save this tips object as request scope, but we name it as pageContent:
        request.setAttribute("pageContent", tips);
        // Create a String array, and give elements as well:
        String[] movies = new String[]{"Game Of Thrones", "Person Of Interest", 
        		"The Walking Dead", "Family Guy", "American Dad"};
        
        // save this movies String array to request scope and name it movieList
        request.setAttribute("movieList", movies);
        // make RequestDispatcher object using request object:
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Result.jsp");
        // use forward method to send request and response objkects to same server 
        // but different servlet, when we created request dispatcher we giving where to send
        requestDispatcher.forward(request, response);
	}
}
