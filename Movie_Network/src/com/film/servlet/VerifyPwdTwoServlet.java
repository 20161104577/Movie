package com.film.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.film.dao.UserDao;

@WebServlet("/verifyPwdTwo")
public class VerifyPwdTwoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public VerifyPwdTwoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String u_pwd1 = request.getParameter("u_pwd1");
		String u_pwd2 = request.getParameter("u_pwd2");
		boolean ve = false;
		if(u_pwd1.equals(u_pwd2)) {
			ve = true;
			response.getWriter().append("{\"isSuccess\":" + ve + "}");
		}else {
			response.getWriter().append("{\"isSuccess\":" + ve + "}");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
