package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CalcServlet")
public class CalcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int num1 = Integer.parseInt(request.getParameter("num1"));
		String op = request.getParameter("op");
		int num2 = Integer.parseInt(request.getParameter("num2"));
		int result = 0;
		String url = "jspexam/calcResult.jsp";

		if (op.equals("plus")) {
			result = num1 + num2;			
		} else if (op.equals("minus")) {
			result = num1 - num2;			
		} else if (op.equals("multiply")) {
			result = num1 * num2;			
		} else {
			if (num2 == 0) {
				request.setAttribute("r", "나눗셈 연산 시 두 번째 숫자는 0일 수 없습니다!!");
				url = "jspexam/errorResult.jsp";
				request.getRequestDispatcher(url).forward(request, response);
			} else {
				result = num1 / num2;				
			}
		}
		request.setAttribute("r", result);
		request.getRequestDispatcher(url).forward(request, response);
	}

}