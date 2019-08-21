package com.film.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.film.bean.FilmBean;
import com.film.dao.FilmDao;


public class FilmKindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FilmKindServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		String f_type = request.getParameter("type");
		FilmDao filmDao = new FilmDao();
		List<FilmBean> list = filmDao.filmKind(f_type);
		if(list.isEmpty())
			System.out.println("没有此类型电影");
		else {
			HttpSession session = request.getSession();
			session.setAttribute("filmKindList", list);
		}
		response.sendRedirect("genre.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
