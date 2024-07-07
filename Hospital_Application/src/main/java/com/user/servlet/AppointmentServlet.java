package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDAO;
import com.db.DBConnect;
import com.entity.Appointment;

@WebServlet("/addAppointment")
public class AppointmentServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int userId = Integer.parseInt(req.getParameter("userid"));
		String fullname = req.getParameter("fullname");
		String gender = req.getParameter("gender");
		String age = req.getParameter("age");
		String appoint_date = req.getParameter("appoint_date");
		String email = req.getParameter("email");
		String phno = req.getParameter("phno");
		String diseases = req.getParameter("diseases");
		int doctor_id = Integer.parseInt(req.getParameter("doct"));
		String address = req.getParameter("address");

		Appointment ap = new Appointment(userId, fullname, gender, age, appoint_date, email, phno, diseases, doctor_id,
				address, "Pending");

		AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
		HttpSession session = req.getSession();

		if (dao.addAppointment(ap)) {
			session.setAttribute("succMsg", "Appointment Booked Sucessfully");
			resp.sendRedirect("user_appointment.jsp");
		} else {
			session.setAttribute("errorMsg", "Something wrong on server");
			resp.sendRedirect("user_appointment.jsp");
		}

	}

}







/*import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDAO;
import com.db.DBConnect;
import com.entity.Appointment;

@WebServlet("/appAppointment")
public class AppointmentServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		int userId=Integer.parseInt(req.getParameter("userid"));
		String fullname=req.getParameter("fullname");
		String gender=req.getParameter("gender");
		String age=req.getParameter("age");
		String appont_date=req.getParameter("appoint_date");
		String email=req.getParameter("email");
		String phno=req.getParameter("phno");
		String diseases=req.getParameter("diseases");
		int doctor_id=Integer.parseInt(req.getParameter("doct"));
		String address=req.getParameter("address");
		
		
		Appointment ap=new Appointment(userId, fullname, gender, age, appont_date, email, phno, diseases, doctor_id,
				address, "pending");
		
		AppointmentDAO dao=new AppointmentDAO(DBConnect.getConn());
		HttpSession hs=req.getSession();
		
		
		if(dao.addAppointment(ap))
		{
			hs.setAttribute("succMsg", "Appointment Successfully");
			resp.sendRedirect("user_appointment.jsp");
		}else
		{
			hs.setAttribute("errorMsg", "Something Wrong On Server");
			resp.sendRedirect("user_appointment.jsp");
		}
		
	}
*/

