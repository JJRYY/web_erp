package web_erp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web_erp.dto.Department;
import web_erp.dto.Employee;
import web_erp.dto.Title;
import web_erp.service.EmployeeService;

@WebServlet("/EmpInsertServlet")
public class EmpInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EmployeeService service;
       
    public EmpInsertServlet() {
    	service = new EmployeeService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("empNo").trim());
		String name = request.getParameter("empName").trim();
		Title title = new Title(Integer.parseInt(request.getParameter("title").trim()));
		Employee manager = new Employee(Integer.parseInt(request.getParameter("manager").trim()));
		int salary = Integer.parseInt(request.getParameter("salary").trim());
		Department dept = new Department(Integer.parseInt(request.getParameter("dept").trim()));
		
		Employee emp = new Employee(no, name, title, manager, salary, dept);
		
		service.addEmployee(emp);
		response.sendRedirect("EmpListServlet");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
