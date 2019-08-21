package com.film.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.film.bean.FilmBean;
import com.film.util.DBUtil;

public class FilmDao {
	
	public List<FilmBean> filmKind(String f_type){
		List<FilmBean> list = new ArrayList<FilmBean>();
		Connection con = null;
		PreparedStatement pst = null;
		FilmBean filmbean= null;
		
		try {
			con = DBUtil.getConnection();
			String sql ="Select * From film where f_type like ?";
			pst = con.prepareStatement(sql);
			pst.setString(1, "%"+f_type+"%");
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				filmbean = new FilmBean();
				filmbean.setF_id(rs.getInt("f_id"));
				filmbean.setC_sum(rs.getInt("c_sum"));
				filmbean.setF_brief(rs.getString("f_brief"));
				filmbean.setF_content(rs.getString("f_content"));
				filmbean.setF_country(rs.getString("f_country"));
				filmbean.setF_name(rs.getString("f_name"));
				filmbean.setF_poster(rs.getString("f_poster"));
				filmbean.setF_year(rs.getString("f_year").substring(0, 4));
				filmbean.setF_type(rs.getString("f_type"));
				System.out.println("year" + rs.getString("f_year").substring(0, 4));
				filmbean.setZan_sum(rs.getInt("zan_sum")); 
				list.add(filmbean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public int upload(String filename, String year, String brief, String country, String content, String poster) {
		Connection conn = null;
		PreparedStatement pst = null;
		int rs = 0;
		try {
			System.out.println(filename);
			conn = DBUtil.getConnection();
			String sql = "insert into film(f_name, f_year, f_brief, f_country, f_content, f_poster, c_sum, zan_sum) values(?,?,?,?,?,?,?,?); ";
			pst = conn.prepareStatement(sql);
			pst.setString(1, filename);
			pst.setString(2, year);
			pst.setString(3, brief);
			pst.setString(4, country);
			pst.setString(5, poster);
			pst.setString(6, null);
			pst.setInt(7, 0);
			pst.setInt(8, 0);
			rs = pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.closeDB(conn, pst, null);
		}
		return rs;
	}
	
	public int alterDetail(String filename, String year, String brief, String country, int f_id) {
		Connection conn = null;
		PreparedStatement pst = null;
		int rs = 0;
		try {
			System.out.println(filename);
			conn = DBUtil.getConnection();
			String sql = "update film set f_name=?,f_year=?,f_brief=?,f_country=? where f_id=?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, filename);
			pst.setString(2, year);
			pst.setString(3, brief);
			pst.setString(4, country);
			pst.setInt(5, f_id);
			rs = pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.closeDB(conn, pst, null);
		}
		return rs;
	}
	
	public List<FilmBean> findFilm(String filmname)
	{
		System.out.println("dao find film");
		List<FilmBean> list = new ArrayList<FilmBean>();
		Connection con = null;
		PreparedStatement pst = null;
		FilmBean filmbean= null;
		try {
			con = DBUtil.getConnection();
			String sql = "Select * From film where f_name like ?";
			pst = con.prepareStatement(sql);
			pst.setString(1, "%"+filmname+"%");
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				filmbean = new FilmBean();
				filmbean.setF_id(rs.getInt("f_id"));
				filmbean.setC_sum(rs.getInt("c_sum"));
				filmbean.setF_brief(rs.getString("f_brief"));
				filmbean.setF_content(rs.getString("f_content"));
				filmbean.setF_country(rs.getString("f_country"));
				filmbean.setF_name(rs.getString("f_name"));
				filmbean.setF_poster(rs.getString("f_poster"));
				if(rs.getString("f_year").length()>4)
					filmbean.setF_year(rs.getString("f_year").substring(0, 4));
				else
					filmbean.setF_year(rs.getString("f_year"));
				filmbean.setZan_sum(rs.getInt("zan_sum")); 
				list.add(filmbean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.closeDB(con, pst, null);
		}
		return list;
	}
	
	public FilmBean alterFilm(int index)
	{
		Connection con = null;
		PreparedStatement pst = null;
		FilmBean filmbean= null;
		try {
			con = DBUtil.getConnection();
			String sql = "Select * From film where f_id = ?";
			pst = con.prepareStatement(sql);
			pst.setInt(1, index);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				filmbean = new FilmBean();
				filmbean.setF_id(rs.getInt("f_id"));
				filmbean.setC_sum(rs.getInt("c_sum"));
				filmbean.setF_brief(rs.getString("f_brief"));
				filmbean.setF_content(rs.getString("f_content"));
				filmbean.setF_country(rs.getString("f_country"));
				filmbean.setF_name(rs.getString("f_name"));
				filmbean.setF_poster(rs.getString("f_poster"));
				if(rs.getString("f_year").length()>4)
					filmbean.setF_year(rs.getString("f_year").substring(0, 4));
				else
					filmbean.setF_year(rs.getString("f_year"));
				filmbean.setZan_sum(rs.getInt("zan_sum")); 
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.closeDB(con, pst, null);
		}
		return filmbean;
	}
	
	public List<FilmBean> showFilm()
	{
		List<FilmBean> list = new ArrayList<FilmBean>();
		Connection con = null;
		PreparedStatement pst = null;
		FilmBean filmbean= null;
		try {
			con = DBUtil.getConnection();
			String sql = "Select * From film";
			pst = con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				filmbean = new FilmBean();
				filmbean.setF_id(rs.getInt("f_id"));
				filmbean.setC_sum(rs.getInt("c_sum"));
				filmbean.setF_brief(rs.getString("f_brief"));
				filmbean.setF_content(rs.getString("f_content"));
				filmbean.setF_country(rs.getString("f_country"));
				filmbean.setF_name(rs.getString("f_name"));
				filmbean.setF_poster(rs.getString("f_poster"));
				if(rs.getString("f_year").length()>4)
					filmbean.setF_year(rs.getString("f_year").substring(0, 4));
				else
					filmbean.setF_year(rs.getString("f_year"));
				filmbean.setZan_sum(rs.getInt("zan_sum")); 
				list.add(filmbean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.closeDB(con, pst, null);
		}
		return list;
	}
	
	public void deleFilm(int index) {
		Connection con = null;
		PreparedStatement pst = null;
		FilmBean filmbean= null;
		try {
			con = DBUtil.getConnection();
			String sql = "Delete from film Where f_id=?";
			pst = con.prepareStatement(sql);
			pst.setInt(1, index);
			int rs = pst.executeUpdate();
			if(rs>0)
				System.out.println("dao rs success");
			else
				System.out.println("dao rs false");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.closeDB(con, pst, null);
		}
	}
}
