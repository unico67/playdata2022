package controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.CountVO;
import model.MessageVO;
@WebServlet("/mvctest")
public class MVCTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/jspexam/exam7.jsp";	
		/*request.setAttribute("msg", "안녕? 난 MVCTestServlet 이야!!");
		request.setAttribute("msg2", "ㅋㅋㅋ뭘 보내냐!!");*/
		MessageVO vo = new MessageVO();
		vo.setMsg("안녕? 난 MVCTestServlet 이야!!");
		vo.setMsg2("ㅋㅋㅋ뭘 보내냐!!");
		request.setAttribute("testvo", vo);
		HttpSession session = request.getSession();
		if(session.getAttribute("countnum") == null) {
			session.setAttribute("countnum", 
					   new CountVO());
		}
		CountVO svo = (CountVO)session.getAttribute(
				                  "countnum");
		svo.setCount(1);
		request.getRequestDispatcher(url).
		                        forward(request, response);
	}
}







