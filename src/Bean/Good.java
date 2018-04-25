package Bean;

import java.sql.ResultSet;
import java.sql.SQLException;

import DBConfig.DBConnector;

public class Good {
	/**
	 * 商品id
	 */
	public String id;
	
	/**
	 * 商品名称
	 *
	 */
	public String name;
	
	/**
	 * 商品进货价
	 */
	public String getPrice;
	
	
	/**
	 * 商品售价
	 */
	public String sellPrice;
	
	/**
	 * 商品图片url
	 */
	public String imgUrl;
	
	/**
	 * 商品所属分类id
	 */
	public String sortId;
	
	/**
	 * 商品库存数量
	 */
	public String num;
	

	public Good() {
		super();
		this.id = "";
		this.name = "";
		this.getPrice = "";
		this.sellPrice = "";
		this.imgUrl = "";
		this.sortId = "";
		this.num="";
	}
	
	/**
	 * 初始化类，若类的变量不存在置为空
	 */
	public void init() {
		if(id==null)id="-1";
		if(name==null)name="";
		if(getPrice==null||getPrice.equals(""))getPrice="0";
		if(sellPrice==null||sellPrice.equals(""))sellPrice="10000";
		if(imgUrl==null)imgUrl="";
		if(sortId==null||sortId.equals(""))sortId="0";
	}
	public Good(String id, String name, String getPrice, String sellPrice, String imgUrl, String sortId) {
		this.id = id;
		this.name = name;
		this.getPrice = getPrice;
		this.sellPrice = sellPrice;
		this.imgUrl = imgUrl;
		this.sortId = sortId;
	}
	/**
	 * 
	 * 获得商品分类名称
	 */
	public String getSortName() {
		DBConnector c = new DBConnector();
		String sql = "select * from goodsort where id="+sortId;
		System.out.println("Good 84:"+sql);
		ResultSet rs = c.executeQuery(sql);
		try {
			
			if(rs!=null&&rs.next()) {
				if(rs.getString("name")!=null) {
					
					return rs.getString("name");
				}
			}
		} catch (SQLException e) {
			System.out.println("GoodImpl 91:"+e.getMessage());
		
			return "未分类";
		}
		return "未分类";
	}
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNum() {
		return num;
	}
	public void setNum(String string) {
		this.num = string;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGetPrice() {
		return getPrice;
	}
	

	
	public void setGetPrice(String getPrice) {
		this.getPrice = getPrice;
	}

	public String getSellPrice() {
		return sellPrice;
	}

	public void setSellPrice(String sellPrice) {
		this.sellPrice = sellPrice;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getSortId() {
		return sortId;
	}

	public void setSortId(String sortId) {
		this.sortId = sortId;
	}

	@Override
	public String toString() {
		return "Good [id=" + id + ", name=" + name + ", getPrice=" + getPrice + ", sellPrice=" + sellPrice + ", imgUrl="
				+ imgUrl + ", sortId=" + sortId + "]";
	}

	
	

}
