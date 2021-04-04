package web_erp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web_erp.dto.Title;
import web_erp.service.TitleService;

@WebServlet("/TitleInsertServlet")
public class TitleInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TitleService service;
	
	public TitleInsertServlet() {
		service = new TitleService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		// tno=9&tname=%EC%9D%B8%ED%84%B4
		int no = Integer.parseInt(request.getParameter("tno").trim());
		String name = request.getParameter("tname").trim();
		
		Title title = new Title(no, name);
//		System.out.println(title);
		
		service.addTitle(title);
		response.sendRedirect("TitleListServlet");
//		request.getRequestDispatcher("titleListServlet").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
