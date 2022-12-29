package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberDBVO;

@WebServlet("/memberDB")
public class MemberDBServlet extends HttpServlet { 
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {		
		request.setCharacterEncoding("utf-8");
		String url = "/jspexam/memberDB.jsp";
		MemberDAO dao = new MemberDAO(); 
		if(dao.confirm(request.getParameter("id"))) {
			MemberDBVO dbvo = new MemberDBVO();
			dbvo.setId(request.getParameter("id"));
			dbvo.setPassword(request.getParameter("password"));
			dbvo.setName(request.getParameter("name"));
			dbvo.setNumber(Integer.parseInt(request.getParameter("number")));
			boolean result = dao.insert(dbvo);
			if(result){
				request.setAttribute("marrygo", "회원 가입이 완료되었어요.");
			}else{
				request.setAttribute("marrygo", "회원 가입에 실패했어요.");	
			}
		} else {
			request.setAttribute("marrygo", "이미 존재하는 계정이니 다른 계정 부탁드립니다.");
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}