package com.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDAO;
import com.db.DBConnect;
import com.entity.Doctor;

@WebServlet("/doctorLogin")
public class DoctorLogin extends HttpServlet 
{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{

		String email = req.getParameter("email");
		String password = req.getParameter("password");

		HttpSession hs = req.getSession();

		DoctorDAO dao = new DoctorDAO(DBConnect.getConn());
		Doctor doctor = dao.login(email, password);

		if (doctor != null) 
		{
			hs.setAttribute("doctObj", doctor);
			resp.sendRedirect("doctor/index.jsp");
		} else 
		{
			hs.setAttribute("errorMsg", "invalid email & password");
			resp.sendRedirect("doctor_login.jsp");
		}

	}

}
