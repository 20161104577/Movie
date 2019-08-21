package com.film.servlet;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.film.bean.UserBean;
import com.film.dao.UserDao;

public class UserManagerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserManagerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
//		System.out.println("1");
		String u_name = request.getParameter("username");
		String u_pwd = request.getParameter("password");
		String u_re_pwd = request.getParameter("re_password");
		String u_email = request.getParameter("email");
		//System.out.println(u_name+u_pwd+u_mobile);
		String remember = request.getParameter("remember");
		String type = request.getParameter("type");
		System.out.println(type);
		
		int x = u_email.indexOf("@");//记录@第一次出现的下标
		int y = u_email.indexOf(".");//记录.最后出现的下标
		if(0 == u_email.indexOf("@")|| u_email.length()-1 == u_email.lastIndexOf(".")|| y-x<2){
			System.out.println("您输入的邮箱不合法！");
			System.out.println("请参考邮箱的标准格式：\t***@***.***");
		}else {
			System.out.println("您输入的邮箱通过验证！");
		}
		
		if(u_pwd.equals(u_re_pwd))
		{
			System.out.println("两次输入密码不同，请重新设置密码！");
		}
		System.out.println(u_name);
	
		if(remember != null)
		{
			Cookie cookie = new Cookie("login_name", u_email);
			cookie.setMaxAge(365*24*60*60);
			response.addCookie(cookie);
		}else
		{
			Cookie cookie = new Cookie("login_name","");
			response.addCookie(cookie);
		}
//		System.out.println("2");
		UserDao userDao = new UserDao();
		HttpSession session = request.getSession();
		
		System.out.println("u_email:"+u_email+"\nu_pwd:"+u_pwd);
		if("login".equals(type))
		{
			//判断管理员登录
			if("admin".equals(u_email) && "123".equals(u_pwd))
			{
				System.out.println("管理员");
				response.sendRedirect("admin/manage.jsp");
			} else {
				System.out.println("login1");
				UserBean userbean = userDao.login(u_email,u_pwd);
				
				if(userbean != null)
				{
					
					session.setAttribute("USERNAME", userbean);
//					System.out.println("UserBean!=null");
					response.sendRedirect("index.jsp");
				}
				else {
//					System.out.println("UserBean==null");
					response.sendRedirect("register.jsp");
				}
			}
//			
		} else if("register".equals(type)) {
//			System.out.println("register");
			int rs = userDao.register(u_name, u_email, u_pwd);
			if(rs > 0)
			{
//				System.out.println("rs!=null");
				response.sendRedirect("login.jsp");
			} else {
//				System.out.println("rs=0");
				response.sendRedirect("register.jsp");
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
