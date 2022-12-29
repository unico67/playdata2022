package controller;

/*import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.VisitorDAO;
import model.vo.VisitorVO;

@WebServlet("/mvcvisitor")
public class MVCVisitorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VisitorDAO dao = new VisitorDAO();
		ArrayList<VisitorVO>list = dao.select();
		if (list != null && list.size() > 0) {
			request.setAttribute("list", list);
		} else {
			request.setAttribute("msg", "방명록에 저장된 글이 없어요.. 글 하나 작성하겠어요?");
		}
		request.getRequestDispatcher
		("/jspexam/visitorview.jsp").forward(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		String memo=request.getParameter("area");
		VisitorVO vo = new VisitorVO();
		vo.setName(name);
		vo.setMemo(memo);		
		VisitorDAO dao = new VisitorDAO();
		boolean result = dao.insert(vo);
		if(result) {
			request.setAttribute("msg", name+" 님의 글이 성공적으로 저장되었어요");
		} else {
			request.setAttribute("msg", name+" 님의 글 저장에 실패하였어요");
		}
		request.getRequestDispatcher
		("/jspexam/visitorview.jsp").forward(request,response);
	}
}
*/









