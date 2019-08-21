package com.film.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.film.bean.UserBean;
import com.film.dao.UserDao;

@WebServlet("/verifyPwd")
public class VerifyPwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public VerifyPwdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("pwd");
		String u_pwd = request.getParameter("u_pwd");
		int u_id = Integer.parseInt(request.getParameter("u_id"));
		//boolean ve =false;
		UserDao userDao = new UserDao();
		boolean rs = userDao.loginggg(u_id,u_pwd);
		response.getWriter().append("{\"isSuccess\":" + rs + "}");
		/*
		 * if(rs) { System.out.println("dui"); ve =true;
		 * response.getWriter().append("{\"isSuccess\":" + ve + "}"); }else {
		 * System.out.println("cuo"); response.getWriter().append("{\"isSuccess\":" + ve
		 * + "}"); }
		 */
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
