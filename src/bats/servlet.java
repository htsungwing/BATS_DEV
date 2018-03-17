package bats;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

import java.io.*;

@SuppressWarnings("serial")
@WebServlet("/BATS")
public class servlet extends HttpServlet {
 public void doGet(HttpServletRequest request, 
  HttpServletResponse response) 
  throws ServletException, IOException {
	 	//final JFrame parent = new JFrame();
	 	//String attemptResponse = JOptionPane.showInputDialog(parent,
	 	//		"Enter Password: ", null);
	    //HttpSession session = request.getAttribute("a");
	    //session.setAttribute("a", "a");
	 	RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
	 	dispatcher.forward(request, response);
		/*PrintWriter out = response.getWriter();
		out.println("<HTML>");
		out.println("<HEAD>");
		out.println("<TITLE>Servlet Testing</TITLE>");
		out.println("</HEAD>");
		out.println("<BODY>");
		out.println("Welcome to the Servlet Testing Center");
		out.println("</BODY>");
		out.println("</HTML>");*/
 }
}
