package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDAO;
import com.db.DBConnect;
import com.entity.User;
@WebServlet("/userLogin")
public class UserLogin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			
			HttpSession hs=req.getSession();
			
			UserDAO dao=new UserDAO(DBConnect.getConn());
			User user=dao.login(email, password);
			
			
			if(user!=null)
			{
				hs.setAttribute("userObj", user);
				resp.sendRedirect("index.jsp");
			}
			else
			{
				hs.setAttribute("errorMsg", "invalid email & password");
				resp.sendRedirect("admin_login.jsp");
			}
			
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

}
