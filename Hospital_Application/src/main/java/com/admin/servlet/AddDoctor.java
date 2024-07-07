package com.admin.servlet;

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
@WebServlet("/addDoctor")
public class AddDoctor extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		try {
			
			
			String fullName=req.getParameter("fullname");
			String dob=req.getParameter("dob");
			String qualification=req.getParameter("qualification");
			
			String spec=req.getParameter("spec");
			
			
			String email=req.getParameter("email");
			String mobno=req.getParameter("mobno");
			String password=req.getParameter("password");
			
			Doctor d=new Doctor(fullName, dob, qualification, spec, email,  mobno,password);
			
			DoctorDAO dao=new DoctorDAO(DBConnect.getConn());
			HttpSession hs=req.getSession();
			
			if(dao.registerDoctor(d))
			{
				hs.setAttribute("succMsg", "Doctor Added Successfully..");
				resp.sendRedirect("admin/doctor.jsp");
			}else
			{
				hs.setAttribute("errorMsg", "Something Wrong On Server");
				resp.sendRedirect("admin/doctor.jsp");
			}
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
	}

}
