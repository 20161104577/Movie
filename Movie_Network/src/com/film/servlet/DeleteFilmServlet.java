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

public class DeleteFilmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteFilmServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String indexs = request.getParameter("index");
		int index = Integer.parseInt(indexs);
		HttpSession session = request.getSession();
		List<FilmBean> list = (List<FilmBean>) session.getAttribute("operatefilmform_dele");
		for(FilmBean item:list) {
			System.out.println(item.getF_name());
		}
		FilmDao filmDao = new FilmDao();
		filmDao.deleFilm(index);
		list = filmDao.showFilm();
		session.setAttribute("operatefilmform_dele", list);
		response.sendRedirect("dele.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
