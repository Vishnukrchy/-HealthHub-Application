<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDAO"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Page</title>
<%@include file="../component/allcss.jsp"%>
<style>
.paint-card {
	box-shadow: 0 0 10px 0 rbga(0, 0, 0, 0.3);
}
</style>

</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="col-md-12">
		<div class="card paint-card">
			<div class="card-body">
				<p class="fs-3 text-center">Patient Details</p>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Full Name</th>
							<th scope="col">Gender</th>
							<th scope="col">Age</th>
							<th scope="col">Appointment</th>
							<th scope="col">Email</th>
							<th scope="col">Mob No</th>
							<th scope="col">Diseases</th>
							<th scope="col">Doctor Name</th>
							<th scope="col">Address</th>
							<th scope="col">Status</th>
						</tr>
					</thead>
					<tbody>
						<%
						AppointmentDAO dao = new AppointmentDAO(DBConnect.getConn());
						DoctorDAO dao2 = new DoctorDAO(DBConnect.getConn());
						List<Appointment> list = dao.getAllAppointment();
						for (Appointment ap : list) {
							Doctor d = dao2.getDoctorById(ap.getDoctorId());
						%>
						<tr>
							<th><%=ap.getFullName()%></th>
							<td><%=ap.getGender()%></td>
							<td><%=ap.getAge()%></td>
							<td><%=ap.getAppoinDate()%></td>
							<td><%=ap.getEmail()%></td>
							<td><%=ap.getPhNo()%></td>
							<td><%=ap.getDiseases()%></td>
							<td><%=d.getFullName()%></td>
							<td><%=ap.getAddress()%></td>
							<td><%=ap.getStatus()%></td>
							<td>
							<%
							if("pending".equals(ap.getStatus()))
							{
								%>
								<a href="comment.jsp?id=<%=ap.getId() %>"
							class="btn btn-success btn-sm">Comment</a><%}else
							{%>
							<a href="#" class="btn btn-success btn-sm disabled">Comment</a>
							<%}
							%>
							
							</td>
						</tr>
						<%
						}
						%>


					</tbody>
				</table>

			</div>
		</div>
	</div>

</body>
</html>