package Impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import Bean.Good;
import DBConfig.DBConnector;

public class GoodImpl {

	public boolean addGood(Good g) {
		DBConnector db = new DBConnector();
		String sql = "INSERT INTO `good`" + "(`name`,`sortId`,`imgUrl`," + "`getPrice`,`sellPrice`,`num`)VALUES"
				+ "('" + g.name + "'," + "" + g.sortId + "," + "'" + g.imgUrl + "'," + "" + g.getPrice
				+ "," + "" + g.sellPrice + "," + "" + g.num + ");";
		System.out.println("GoodImpl 16 line:" + sql);
		boolean b = db.execute(sql);
		return b;
	}

	public boolean deleteGoodById(String id) {
		DBConnector db = new DBConnector();
		String sql = "delete from good where id=" + id;
		System.out.println("GoodImpl 28 line:" + sql);
		boolean b = db.execute(sql);
		return b;
	}

	public boolean updateGood(Good g) {
		DBConnector db = new DBConnector();
		String sql = "UPDATE `good`" + "set `name`='" + g.name + "'," + "`sortId`=" + g.sortId + "," + "`imgUrl`='"
				+ g.imgUrl + "'," + "`getPrice`='" + g.getPrice + "'," + "`sellPrice`=" + g.sellPrice + "," + "`num`="
				+ g.num + " where id=" + g.id + ";";
		System.out.println("GoodImpl 34 line:" + sql);
		boolean b = db.execute(sql);
		return b;
	}

	public Good[] getAllGoods() {
		DBConnector db = new DBConnector();
		String sql = "select * from good;";
		ResultSet rs = db.executeQuery(sql);
		Good[] goods = new Good[db.getRows(rs)];
		try {
			for (int i = 0; rs.next(); i++) {
				Good g = new Good();

				g.setId(rs.getString("id"));
				g.setGetPrice(rs.getString("getPrice"));
				g.setImgUrl(rs.getString("imgUrl"));
				g.setName(rs.getString("name"));
				g.setNum(rs.getString("num"));
				g.setSellPrice(rs.getString("sellPrice"));
				g.setSortId(rs.getString("sortId"));
				goods[i] = g;
			}
		} catch (SQLException e) {
			System.out.println("GoodImpl 56 line:" + e.getMessage());
		}
		return goods;
	}

	public Good getGoodById(String id) {
		DBConnector db = new DBConnector();
		String sql = "select * from good where id=" + id;
		System.out.println("GoodImpl 66 line:" + sql);
		ResultSet rs = db.executeQuery(sql);
		Good g = new Good();
		try {
			if (rs.next()) {
				g.setId(rs.getString("id"));
				g.setGetPrice(rs.getString("getPrice"));
				g.setImgUrl(rs.getString("imgUrl"));
				g.setName(rs.getString("name"));
				g.setNum(rs.getString("num"));
				g.setSellPrice(rs.getString("sellPrice"));
				g.setSortId(rs.getString("sortId"));
			}
		} catch (SQLException e) {
			System.out.println("GoodImpl 80 line:" + e.getMessage());
		}

		return g;
	}

	public Good[] getGoodsBySortId(String id) {
		DBConnector db = new DBConnector();
		String sql = "select * from good where sortId=" + id + ";";
		System.out.println("GoodImpl 88 line:" + sql);
		ResultSet rs = db.executeQuery(sql);
		Good[] goods = new Good[db.getRows(rs)];
		try {
			for (int i = 0; rs.next(); i++) {
				Good g = new Good();

				g.setId(rs.getString("id"));
				g.setGetPrice(rs.getString("getPrice"));
				g.setImgUrl(rs.getString("imgUrl"));
				g.setName(rs.getString("name"));
				g.setNum(rs.getString("num"));
				g.setSellPrice(rs.getString("sellPrice"));
				g.setSortId(rs.getString("sortId"));
				goods[i] = g;
			}
		} catch (SQLException e) {
			System.out.println("GoodImpl 106 line:" + e.getMessage());
		}
		return goods;
	}

}
