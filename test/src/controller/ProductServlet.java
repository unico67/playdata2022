package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.ProductVO;

@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String pid = request.getParameter("pid");
		if(session.getAttribute("countnum")==null){
			session.setAttribute("countnum", new ProductVO());
		}
		ProductVO pvo = (ProductVO)session.getAttribute("countnum");
		if(pid.equals("p001")){
			pvo.setNumA(1);
		}
		else if (pid.equals("p002")){
			pvo.setNumB(1);
		}
		else if(pid.equals("p003")){
			pvo.setNumC(1);
		}else{ 
		  session.setAttribute("countnum", new ProductVO());
		  //pvo = (ProductVO)session.getAttribute("countnum");
		}		
		request.getRequestDispatcher("/jspexam/productview.jsp").forward(request, response);	
	}
}
