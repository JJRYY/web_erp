package web_erp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web_erp.dto.Department;
import web_erp.service.DepartmentService;

@WebServlet("/DeptInsertServlet")
public class DeptInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DepartmentService service;
       
    public DeptInsertServlet() {
    	service = new DepartmentService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("deptNo").trim());
		String name = request.getParameter("deptName").trim();
		int floor = Integer.parseInt(request.getParameter("floor").trim());
		
		Department dept = new Department(no, name, floor);
		
		service.addDepartment(dept);
		response.sendRedirect("DeptListServlet");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
