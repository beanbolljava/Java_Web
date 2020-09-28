package Bean;

import java.util.*;
import java.sql.*;

public class JDBConnection {
	private final String url="jdbc:mysql://localhost:3306/Login?serverTimezone=UTC&characterEncoding=utf-8";
	private final String username="root";
	private final String password="419253381";
	private Connection con=null;
	
	public JDBConnection(){
	try{
		Class.forName("com.mysql.jdbc.Driver");
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("连接成功");
		}
	}
	
	public Boolean creatConnection(){
		try{
			con=DriverManager.getConnection(url,username,password);
			con.setAutoCommit(true);
		}catch(SQLException e){
			
		}
		return true;
		
	}
	
	public Boolean executeUpdate(String usernames,String passwords,String name,String phone,String gender,String email,String address){
		if(con==null){
			
			creatConnection();
		}
		try{
			PreparedStatement ptmt = con.prepareStatement("insert into Login_table(usernames,passwords,names,phone,gender,email,address) values (?,?,?,?,?,?,?)");
			ptmt.setString(1,usernames);
			ptmt.setString(2,passwords);
			ptmt.setString(3,name);
			ptmt.setString(4,phone);
			ptmt.setString(5,gender);
			ptmt.setString(6,email);
			ptmt.setString(7,address);
			int iClout=ptmt.executeUpdate();
			return true;
		}catch(SQLException e){
			return false;
		}
		
	}
	
	public ResultSet executeQuery(String sql,String usernames,String passwords){
		ResultSet rs;
		try{
			if(con==null){
				creatConnection();
			}
			PreparedStatement ptmt = con.prepareStatement(sql);
			ptmt.setString(1,usernames);
			ptmt.setString(2,passwords);
			ptmt.execute();
			rs=ptmt.executeQuery();
			return rs;
		}catch(Exception e){
			return null;
		}
		
	}
	
	public ResultSet executeQuery_goods(String sql,String goodsname){
		ResultSet rs;
		try{
			if(con==null){
				creatConnection();
			}
			PreparedStatement ptmt = con.prepareStatement(sql);
			ptmt.setString(1,goodsname);
			ptmt.execute();
			rs=ptmt.executeQuery();
			return rs;
		}catch(Exception e){
			return null;
		}
		
	}
	
	public ResultSet executeQuery_id(String sql){
		ResultSet rs;
		try{
			if(con==null){
				creatConnection();
			}
			PreparedStatement ptmt = con.prepareStatement(sql);
			
			ptmt.execute();
			rs=ptmt.executeQuery();
			return rs;
		}catch(Exception e){
			return null;
		}
		
	}
	
}
