package hu.sol.kvki.book.servlet;

import hu.sol.kvki.book.bean.Book;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.jms.Session;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

@WebServlet(urlPatterns="/library")
public class LibraryServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		List<Book> books = new ArrayList();
		for (int i = 0; i < 5; i++) {
			Book temp = new Book();
			temp.setId(i+1);
			temp.setName(i+1 + ". cím");
			temp.setDesc(i+1 + ". címû könyv leírása");
			temp.setAuthor(i+1 + ". szerzõ");
			temp.setPubYear(2000+i);
			books.add(temp);
		}
		
		HttpSession session = req.getSession();
	    session.setAttribute("books", books);
	    RequestDispatcher requestDispatcher = req.getRequestDispatcher("/library.jsp");
	    requestDispatcher.forward(req, resp);
	}
}
