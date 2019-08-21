package com.film.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.film.bean.UserBean;
import com.film.util.DBUtil;

public class UserDao {

	public UserDao() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public int register(String u_name, String u_email, String u_pwd) {
		PreparedStatement pst = null;
		Connection con = null;
		int rs = 0;
		try {
			System.out.println("userdao");
			con = DBUtil.getConnection();
			String sql = "insert into user(u_name, u_email, u_pwd, u_avatar) values(?,?,?,?);";
			pst = con.prepareStatement(sql);
			pst.setString(1, u_name);
			pst.setString(2, u_email);
			pst.setString(3, u_pwd);
			pst.setString(4, "../imgs/avatar.jpg");
			rs = pst.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.closeDB(con, pst, null);
		}
		return rs;
	}
	
	public UserBean login(String u_email, String u_pwd) {
		PreparedStatement pst = null;
		Connection con = null;
		ResultSet rs = null;
		UserBean user = null;
		try {
			con = DBUtil.getConnection();
			String sql = "Select * From user where u_email=? and u_pwd=?";
			pst = con.prepareStatement(sql);
			pst.setString(1, u_email);
			pst.setString(2, u_pwd);
			rs = pst.executeQuery();
			while(rs.next())
			{
				user = new UserBean();
				user.setU_email(rs.getString("u_email"));
				user.setU_pwd(rs.getString("u_pwd"));
				user.setU_name(rs.getString("u_name"));
				user.setU_avatar(rs.getString("u_avatar"));
				user.setU_id(rs.getInt("u_id"));
				user.setU_retime("u_retime");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.closeDB(con, pst, rs);
		}
		return user;
	}
	
	public boolean verifyEmail(String u_email) {
		PreparedStatement pst = null;
		Connection con = null;
		ResultSet rs = null;
		boolean ve = false;
		try {
			con = DBUtil.getConnection();
			String sql = "Select * From user where u_email=?";
			pst = con.prepareStatement(sql);
			pst.setString(1, u_email);
			rs = pst.executeQuery();
			while(rs.next())
			{
				System.out.println(rs.getString("u_email"));
				ve = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.closeDB(con, pst, rs);
		}
		
		return ve;
	}
	
	public boolean name(int u_id,UserBean ub) {
		// TODO Auto-generated method stub
		boolean rs = false;
		//UserBean user = new UserBean();
		PreparedStatement pst = null;
		Connection conn =null;
		
		try {
			conn = DBUtil.getConnection();
			String sql = "update user set u_name=? where u_id=?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, ub.getU_name());
			pst.setInt(2, u_id);
			pst.executeUpdate();
			rs = true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.closeDB(conn, pst, null);
		}
		return rs;
	}
	public boolean pwd(int u_id,UserBean ub) {
		// TODO Auto-generated method stub
		boolean rs = false;
		//UserBean user = new UserBean();
		PreparedStatement pst = null;
		Connection conn =null;
		
		try {
			conn = DBUtil.getConnection();
			String sql = "update user set u_pwd=? where u_id=?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, ub.getU_pwd());
			pst.setInt(2, u_id);
			pst.executeUpdate();
			rs = true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.closeDB(conn, pst, null);
		}
		return rs;
	}
	public boolean loginggg(int u_id, String u_pwd) {
		// TODO Auto-generated method stub
		ResultSet rs=null;
		PreparedStatement pst = null;
		Connection conn =null;
		try {
			conn = DBUtil.getConnection();
			String sql = "select * from user where u_id=? and u_pwd=?";
			pst = conn.prepareStatement(sql);
			pst.setInt(1, u_id);
			pst.setString(2, u_pwd);
			rs=pst.executeQuery();
			if(rs.next() == false) {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.closeDB(conn, pst, null);
		}
		return true;
	}
	public UserBean getUserInfo(int u_id) {
		// TODO Auto-generated method stub
		ResultSet rs=null;
		PreparedStatement pst = null;
		Connection conn =null;
		UserBean user = null;
		try {
			conn = DBUtil.getConnection();
			String sql = "select * from user where u_id=?";
			pst = conn.prepareStatement(sql);
			pst.setInt(1, u_id);
			rs=pst.executeQuery();
			while(rs.next()){
				user = new UserBean();
				user.setU_id(rs.getInt("u_id"));
				user.setU_email(rs.getString("u_email"));
				user.setU_name(rs.getString("u_name"));
				user.setU_avatar(rs.getString("u_avatar"));
				user.setU_pwd(rs.getString("u_pwd"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBUtil.closeDB(conn, pst, null);
		}
		return user;
	}

	
	public boolean IsPwd(String pwd) {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		String sql = "select * from user where u_pwd=?";
		UserBean user = null;
		PreparedStatement pst = null;
		ResultSet rs=null;
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, pwd);
			rs=pst.executeQuery();
			while(rs.next()) {
				return true;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
