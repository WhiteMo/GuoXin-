package Impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import Bean.GoodSort;
import DBConfig.DBConnector;

public class GoodSortImpl {
	public GoodSort[] getAllGoodSorts() {
		DBConnector db = new DBConnector();
		String sql="select * from goodSort;";
		ResultSet rs = db.executeQuery(sql);
		GoodSort[] sorts=new GoodSort[db.getRows(rs)];
		try {
			for(int i=0;rs.next();i++) {
				GoodSort sort=new GoodSort();
				sort.setId(rs.getString("id"));
				sort.setName(rs.getString("name"));
				sorts[i]=sort;
			}
		} catch (SQLException e) {
			System.out.println("GoodSortImpl 20 line:"+sql);
			return null;
		}
		return sorts;
	}
	public GoodSort getGoodSortById(String id) {
		DBConnector db = new DBConnector();
		String sql="select * from goodSort where id="+id+";";
		System.out.println("GoodSortImpl 31 line:"+sql);
		ResultSet rs = db.executeQuery(sql);
		GoodSort sort=new GoodSort();
		try {
			if(rs.next()) {
				sort.setId(rs.getString("id"));
				sort.setName(rs.getString("name"));
			}
		} catch (SQLException e) {
			System.out.println("GoodSortImpl 42 line:"+sql);
			return null;
		}
		return sort;
	}
	public boolean updateGoodSort(GoodSort sort) {
		DBConnector db = new DBConnector();
		String sql="update goodSort set name='"+sort.getName()+"' where id="+sort.id;
		System.out.println("GoodSortImpl 48 line:"+sql);
		boolean b = db.execute(sql);
		return b;
	}
	public boolean addGoodSort(GoodSort sort) {
		DBConnector db = new DBConnector();
		String sql="insert into goodSort(`name`) values('"+sort.getName()+"')";
		System.out.println("GoodSortImpl 55 line:"+sql);
		boolean b = db.execute(sql);
		return b;
	}
	public boolean deleteGoodSortById(String id) {
		DBConnector db = new DBConnector();
		String sql="delete from goodSort where id="+id;
		System.out.println("GoodSortImpl 62 line:"+sql);
		boolean b = db.execute(sql);
		return b;
	}
}
