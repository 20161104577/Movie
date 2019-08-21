package com.film.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.film.dao.FilmDao;

public class FilmManageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FilmManageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String file = request.getParameter("file");
		String picture = request.getParameter("picture");
		String filemname = request.getParameter("filemname");
		String year = request.getParameter("year");
		String brief = request.getParameter("brief");
		String country = request.getParameter("country");
		
		FilmDao filmDao = new FilmDao();
		int rs = filmDao.upload(filemname, year, brief, country, filemname, picture);
		
		if(rs > 0)
			System.out.println("电影保存成功");
		else
			System.out.println("电影保存失败");
		response.sendRedirect("manage.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
