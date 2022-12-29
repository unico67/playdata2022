package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberVO;

@WebServlet("/member")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/jspexam/memberview.jsp";		
		request.setCharacterEncoding("utf-8");		
		MemberVO mvo = new MemberVO();		
		mvo.setName(request.getParameter("name"));
		mvo.setPhoneNum(request.getParameter("phonenumber"));
		mvo.setId(request.getParameter("id"));
		mvo.setPasswd(request.getParameter("passwd"));		
		request.setAttribute("membervo", mvo);
		request.getRequestDispatcher(url).forward(request, response);
	}
}