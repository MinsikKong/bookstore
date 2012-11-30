package controller;

import java.io.IOException;
import java.io.PrintWriter;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
@WebServlet(asyncSupported = false, name = "HelloAnnotationServlet", urlPatterns = {"/hello"},
initParams = {@WebInitParam(name="param1", value="value1"), @WebInitParam(name="param2", value="value2")}
)
public class ServletTest extends HttpServlet {
 
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String op ="";
		String actionUrl ="";
		try{
			if(op == null || op.equals("main") || op.equals("")){
				actionUrl = "pages/main.jsp";
			}
		}catch(Exception e){
			e.printStackTrace();
			actionUrl="error.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(actionUrl);
		dispatcher.forward(request, response);
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.write("<h2>Hello Friends! Welcome to the world of servlet annotation </h2>");
		out.write("<br/>");
		out.write("<h4>I am a servlet 3, I have been defined using @WebServlet annotations.</h4>");
		out.write("<br/>");
		out.write("The Init parameters passed to me are :");
		out.write("<br/>");
		out.write("<ol>");
		out.write(li("param1="+getServletConfig().getInitParameter("param1")));;
		out.write(li("param2="+getServletConfig().getInitParameter("param2")));;
		out.write("</ol>");
		out.close();
	}
 
	private String li(String val) {
		return "<li>"+val+"</li>";
	}
}