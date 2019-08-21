package com.film.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.film.bean.UserBean;
import com.film.dao.UserDao;

public class NameModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NameModifyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Map<String,String> map = new HashMap<String,String>();
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		UserDao userdao = new UserDao();
		UserBean ub = new UserBean();
		ub.setU_name(request.getParameter("u_name"));
		System.out.println(ub.getU_name());
		
		int u_id = Integer.parseInt(request.getParameter("u_id"));
		System.out.println(u_id);
			boolean i = userdao.name(u_id,ub);
		//	System.out.println(i);
			if(i) {
				UserDao dao = new UserDao();
				UserBean j = dao.getUserInfo(u_id);
				HttpSession session = request.getSession();
				session.setAttribute("USERNAME", j);
				request.getRequestDispatcher("me.jsp").forward(request, response);
			}else {
				request.getRequestDispatcher("me_name_modify.jsp").forward(request, response);
				//request.getRequestDispatcher("me_information.jsp").forward(request, response);
			}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
