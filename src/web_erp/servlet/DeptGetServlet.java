package web_erp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web_erp.dto.Department;
import web_erp.service.DepartmentService;

@WebServlet("/DeptGetServlet")
public class DeptGetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private DepartmentService service;
    
    public DeptGetServlet() {
    	service = new DepartmentService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("deptNo").trim());
		Department dept = service.getDepartment(new Department(no));
		
		request.setAttribute("dept", dept);
		
		request.getRequestDispatcher("deptInfo.jsp").forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
