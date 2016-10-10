package hu.sol.kvki;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/html");
		String parameter = req.getParameter("name");
		resp.getWriter().print("Hello " + parameter + "! <br/>");
		resp.getWriter().print("<a href='javascript:window.history.back();'>Vissza</a>");
	}
}
