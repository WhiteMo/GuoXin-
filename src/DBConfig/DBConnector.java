package DBConfig;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnector {
	private static Connection con;
	private static String driver = "com.mysql.jdbc.Driver";
	private static String url = "jdbc:mysql://localhost/shop?characterEncoding=UTF-8&autoReconnect=true&amp;autoReconnectForPools=true";
	private static String user = "root";
	private static String password ="767513342z";
	private static Statement st=null;
	
	public static Statement getStatement() {
		return st;
	}
	public  DBConnector(){
		  try {
				Class.forName(driver);
				con = DriverManager.getConnection(url,user,password);
		        if(!con.isClosed())
		               //System.out.println("Succeeded connecting to the Database!");
		        st=con.createStatement();
		  } catch (SQLException e) {
				System.out.println("DBConnector 29:"+e.getMessage());
			} catch (ClassNotFoundException e) {
				System.out.println("DBConnector 31:"+e.getMessage());
			}
	}
	
	public ResultSet executeQuery(String sql) {
		try {
			return st.executeQuery(sql);
		} catch (SQLException e) {
			System.out.println("DBConnector 39:"+e.getMessage());
			return null;
		}
	}
	public boolean execute(String sql) {
		try {
			st.execute(sql);
			return true;
		} catch (SQLException e) {
			System.out.println("DBConnector 48:"+e.getMessage());
			return false;
		}
	}
	public static void main(String[] args){
		try {
			Statement st = con.createStatement();
			String sql = "call borrowBook(18810522533,1234);";
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				System.out.println(rs.getString(1));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int getRows(ResultSet rs) {
		int rowcount=0;
		if(rs!=null) {
			try {
				rs.last(); //直接执行跳到结果集的最后一行
				rowcount = rs.getRow();   //这一句就能得到结果集的行数
				rs.beforeFirst();   //重新执行到第一行的前一行，以便查询结果集的集体内容
				
			} catch (SQLException e) {
				return 0;
			}     
		}
		
		return rowcount;
	}
	
	
}
