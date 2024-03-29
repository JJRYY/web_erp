package web_erp.ds;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class JndiDS {
	private static DataSource ds;
	
	private JndiDS() {}
	
	static { // 생성자 호출전 static 블럭 수행
		try {
			InitialContext ic = new InitialContext();
			ds = (DataSource) ic.lookup("java:comp/env/jdbc/dbstudy");
//			System.out.println("ds : " + ds);
		} catch (NamingException e){
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection() {
		try {
			return ds.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
