<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.SpecialistDAO"%>
<%@page import="com.entity.Specialist"%>
<%@page import="com.db.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor</title>


<%@include file="../component/allcss.jsp" %>

	<style>
		.paint-card
		 {
			box-shadow: 0 0 10px 0 rbga(0, 0, 0, 0.3);
		 }
	</style>
</head>
<body>
	<%@include file="navbar.jsp" %>
	
				<div class="container-fluid p-3">
					<div class="row">
					
					<div class="col-md-4 offset-md-4">
						<div class="card paint-card">
							<div class="card-body ">
								<!-- <i class="fas fa-user-circle fa-3x"></i><br> -->
								<p class="fs-3 text-center">Edit Doctor Details</p>
									<c:if test="${not empty errorMsg}">
										<p class="fs-3 text-center text-danger">${errorMsg}</p>
										<c:remove var="errorMsg" scope="session"/>
									</c:if>
		
									<c:if test="${not empty succMsg}">
										<div class="fs-3 text-center text-success" role="alert">${succMsg}</div>
										<c:remove var="succMsg" scope="session"/>
									</c:if>	
											
											<%
											int id=Integer.parseInt(request.getParameter("id"));
											DoctorDAO dao2=new DoctorDAO(DBConnect.getConn());
											Doctor d=dao2.getDoctorById(id);
											
											%>
																	
									<form action="../updateDoctor" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									required name="fullname" class="form-control"
									 value="<%=d.getFullName()%>">
							</div>

							<div class="mb-3">
								<label class="form-label">DOB</label> <input type="date"
									value="<%=d.getDob()%>" required name="dob" class="form-control" >
							</div>

							<div class="mb-3">
								<label class="form-label">Qualification</label> <input required value="<%=d.getQualification()%>"
									name="qualification" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Specialist</label> <select name="spec"
									required class="form-control">
									<option><%=d.getSpecialist()%></option>
									
									<% SpecialistDAO dao=new SpecialistDAO(DBConnect.getConn());
										List<Specialist> list=dao.getAllSpecialists();
										for(Specialist s:list)
										{%>
											<option><%=s.getSpecialistName() %></option>
										<%}
									%>
									</select>
							</div>

							<div class="mb-3">
								<label class="form-label">Email</label> <input type="text" 
								value="<%=d.getEmail() %>" required name="email" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Mob No</label> <input type="text"
								 value="<%=d.getMobNo() %>"	required name="mobno" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required 
								value="<%=d.getPassword() %>" name="password" type="text" class="form-control">
							</div>

								<input type="hidden" name="id" value="<%=d.getId() %>" >
								
							<button type="submit" class="btn btn-primary col-md-12">Update</button>
						</form>
																	
							</div>
						</div>
					</div>
					
				

				</div>	
			</div>

</body>
</html>