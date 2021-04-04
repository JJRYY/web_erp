package web_erp.service;

import java.sql.Connection;
import java.util.List;

import web_erp.dao.impl.TitleDaoImpl;
import web_erp.ds.JndiDS;
import web_erp.dto.Title;

public class TitleService {
	private Connection con = JndiDS.getConnection();
	private TitleDaoImpl dao = TitleDaoImpl.getInstance();
	
	public TitleService() {
		dao.setCon(con);
	}
	
	public List<Title> showTitles(){
		return dao.selectTitleByAll();
	}
	
	public void addTitle(Title title) {
		dao.insertTitle(title);
	}
	
	public void removeTitle(int tNo) {
		dao.deleteTitle(tNo);
	}
	
	public void updateTitle(Title title) {
		dao.updateTitle(title);
	}
	
	public Title getTitle(Title title) {
		return dao.selectTitleByNo(title);
	}
}
