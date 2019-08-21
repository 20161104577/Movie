package com.film.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.film.dao.UserDao;

@WebServlet("/verifyEmail")
public class VerifyEmailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public VerifyEmailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		//做一个方法从数据库查看email是否存在
		UserDao userDao = new UserDao();
		boolean ve = userDao.verifyEmail(email);
		response.getWriter().append("{\"isSuccess\":" + ve + "}");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
