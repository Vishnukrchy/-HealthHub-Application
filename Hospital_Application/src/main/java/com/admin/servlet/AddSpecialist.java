package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.SpecialistDAO;
import com.db.DBConnect;
import com.entity.User;
@WebServlet("/addSpecialist")
public class AddSpecialist extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String specName=req.getParameter("specName");
		SpecialistDAO dao=new SpecialistDAO(DBConnect.getConn());
		boolean f=dao.addSpecialist(specName);
		
		HttpSession hs=req.getSession();
		if(f)
		{
			hs.setAttribute("succMsg", "Specialist Added");
			resp.sendRedirect("admin/index.jsp");
		}
		else
		{
			hs.setAttribute("errorMsg", "Something Wrong On Server");
			resp.sendRedirect("admin/index.jsp");
		}
		
	}

}
