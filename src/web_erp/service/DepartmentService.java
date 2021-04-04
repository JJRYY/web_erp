package web_erp.service;

import java.sql.Connection;
import java.util.List;

import web_erp.dao.impl.DepartmentDaoImpl;
import web_erp.ds.JndiDS;
import web_erp.dto.Department;

public class DepartmentService {
	private Connection con = JndiDS.getConnection();
	private DepartmentDaoImpl dao = DepartmentDaoImpl.getInstance();

	public DepartmentService() {
		dao.setCon(con);
	}

	public List<Department> showDepartments() {
		return dao.selectDepartmentByAll();
	}

	public Department getDepartment(Department department) {
		return dao.selectDepartmentByNo(department);
	}

	public void addDepartment(Department department) {
		dao.insertDepartment(department);
	}

	public void removeDepartment(int deptNo) {
		dao.deleteDepartment(deptNo);
	}

	public void updateDepartment(Department department) {
		dao.updateDepartment(department);
	}

}
