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

public class AlterFilmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public AlterFilmServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String indexs = request.getParameter("index");
		String type = request.getParameter("type");
		
		int index = Integer.parseInt(indexs);
		
		if(index < 0) {
			System.out.println("没有获取index");
		} 
		
		System.out.println(index);
			
		FilmDao filmDao = new FilmDao();
		HttpSession session = request.getSession();
		
		
		if("first".equals(type))
		{
			System.out.println("alter type:" + type);
			List<FilmBean> list = (List<FilmBean>) session.getAttribute("operatefilmform_alter");
			for(FilmBean item:list) {
				System.out.println(item.getF_name());
			}
			FilmBean alterFilm = filmDao.alterFilm(index);
			session.setAttribute("operatefilmform_alter", alterFilm);
			response.sendRedirect("alter_detail.jsp");
		} else if("second".equals(type)) {
			System.out.println("alter type:" + type);
			String filename = request.getParameter("filename");
			String year = request.getParameter("year");
			String brief = request.getParameter("brief");
			String country = request.getParameter("country");
			
			int rs = filmDao.alterDetail(filename, year, brief, country, index);
			
			if(rs>0)
			{
				System.out.println("修改成功");
				response.sendRedirect("manage.jsp");
			} else {
				System.out.println("修改失败");
			}
			
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
