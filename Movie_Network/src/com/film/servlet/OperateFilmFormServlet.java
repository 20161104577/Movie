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

public class OperateFilmFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public OperateFilmFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String type = request.getParameter("type");
		FilmDao filmDao = new FilmDao();
		
		HttpSession session = request.getSession();
		
		if("show".equals(type))
		{
			List<FilmBean> list = filmDao.showFilm();
			if(list != null)
			{
				session.setAttribute("operatefilmform_show", list);
				response.sendRedirect("show.jsp");
			} else {
				System.out.println("获取列表失败或者无电影信息");
			}
		} else if("dele".equals(type)) {
			List<FilmBean> list = filmDao.showFilm();
			if(list != null)
			{
				session.setAttribute("operatefilmform_dele", list);
				response.sendRedirect("dele.jsp");
			} else {
				System.out.println("获取列表失败或者无电影信息");
			}
			System.out.println("dele");
		} else if("alter".equals(type)) {
			List<FilmBean> list = filmDao.showFilm();
			if(list != null)
			{
				session.setAttribute("operatefilmform_alter", list);
				response.sendRedirect("alter.jsp");
			} else {
				System.out.println("获取列表失败或者无电影信息");
			}
			System.out.println("alter");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
