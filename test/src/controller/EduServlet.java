package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/eduservlet")
public class EduServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");		
		int scoreAvg = Integer.parseInt(request.getParameter("scoreavg"));	
		String url = "";		
		if(scoreAvg>=90)
			url = "/jspexam/gradeA.jsp";
		else if(scoreAvg>=80)
			url = "/jspexam/gradeB.jsp";
		else if(scoreAvg>=70)
			url = "/jspexam/gradeC.jsp";
		else
			url = "/jspexam/gradeD.jsp";		
		request.getRequestDispatcher(url).forward(request, response);		
	}
}