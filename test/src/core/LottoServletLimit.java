package core;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/lottolimit")
public class LottoServletLimit extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		if (session.getAttribute("lottocnt") == null) {
			session.setAttribute("lottocnt", new int[1]);
		}
		int[] count = (int[]) session.getAttribute("lottocnt");
		int answer = (int) (Math.random() * 10) + 1;
		int input = Integer.parseInt(request.getParameter("guess"));

		String msg = "";
		if (++count[0] > 3) {
			msg = "<h3>더이상 응모할 수 없습니다.</h3><h3> 브라우저를 재기동하여 응모하세요.</h3>";
		} else {
			if (answer == input) {
				msg = "<h3>축하합니다... 당첨되었어요!!</h3>";
				count[0] = 4;
			} else {
				msg = "<h3>다음 기회를....</h3><a href='/edu/servletexam/lotto.html'>재도전</a>";
			}
		}
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(msg);
		out.close();
	}
}
