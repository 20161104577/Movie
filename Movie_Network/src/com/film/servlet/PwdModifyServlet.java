package com.film.servlet;

import java.io.IOException;
//import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.film.dao.UserDao;
//import com.sun.javafx.collections.MappingChange.Map;

//import net.sf.json.JSONObject;

import com.film.bean.UserBean;

/**
 * Servlet implementation class aspwd
 */
@WebServlet("/aspwd")
public class PwdModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PwdModifyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		//String type = request.getParameter("type");
		UserDao userdao = new UserDao();
		UserBean ub = new UserBean();
		int u_id = Integer.parseInt(request.getParameter("u_id"));
		String u_pwd = request.getParameter("u_pwd");
		String u_pwd1 = request.getParameter("u_pwd1");
		String u_pwd2 = request.getParameter("u_pwd2");
		//UserBean rs = userdao.loginggg(u_id,u_pwd);
		boolean rs = userdao.loginggg(u_id,u_pwd);
			 //HashMap<String, String> map = new HashMap<String, String>();
			 //UserBean j = userdao.getUserInfo(u_id);	 
			 //if(u_pwd.equals(rs.getU_pwd())) { 
		if(rs) {
				 if(u_pwd1.equals(u_pwd2)) {
					ub.setU_pwd(request.getParameter("u_pwd1"));
					boolean i = userdao.pwd(u_id,ub);
					if(i) {
						HttpSession session = request.getSession();
						session.invalidate();
						response.sendRedirect("../login.jsp");
						//request.getRequestDispatcher("me.jsp").forward(request, response);
					}else {
						request.getRequestDispatcher("me_pwd_modify.jsp").forward(request, response);
					}            
				}else {
					request.getRequestDispatcher("me_pwd_modify.jsp").forward(request, response);
				}
			}else {
			 request.getRequestDispatcher("me_pwd_modify.jsp").forward(request, response);
			}
		}
		
		
	//}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
