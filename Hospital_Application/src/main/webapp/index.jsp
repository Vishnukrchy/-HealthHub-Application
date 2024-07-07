
<%@page import="com.db.DBConnect" %>
<%@page import="java.sql.Connection" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<%@include file="component/allcss.jsp"%>


<style>

.paint-card 
	{
		box-shadow: 0 0 10px 0 rbga(0, 0, 0, 0.3);
	}
</style>


</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/hosp1.jpg" class="d-block w-100" alt="..." height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/hos2.jpg" class="d-block w-100" alt="..."	height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/hos3.jpg" class="d-block w-100" alt="..."	height="500px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>



	<div class="container p-3">
		<p class="text-center fs-2">Key Features of our Hostipal</p>
		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p>Lorem ipsum dolor sit amet, consecteture adipisicing
									elit.Voluptatem, inventore</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Clean Environment</p>
								<p>Lorem ipsum dolor sit amet, consecteture adipisicing
									elit.Voluptatem, inventore</p>
							</div>
						</div>

					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Friendly Doctors</p>
								<p>Lorem ipsum dolor sit amet, consecteture adipisicing
									elit.Voluptatem, inventore</p>
							</div>
						</div>

					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Medical Research</p>
								<p>Lorem ipsum dolor sit amet, consecteture adipisicing
									elit.Voluptatem, inventore</p>
							</div>
						</div>

					</div>
				</div>

			</div>
			<div class="col-md-4">
				<img src="img/doctor1.jpg" alt="" height="350px">

			</div>
		</div>
	</div>
	
	
	
	<hr>
	
	<div class="container p-2">
		<p class="text-center fs-2 ">Our Team</p>
		
		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doct1.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Kthryn Killer</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doct2.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr. Tamannah Bhatia</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doct3.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr. Rakul Preet Singh</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/doct4.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr. Kathryn</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>

		</div>

	</div>

     </div>
      </div>
      
      <%@include file="component/footer.jsp" %>
      
      
      
      
       <!-- <div class="container p-2">
     <p class="text-center fs-2">Our Team</p>
     
        <div class="row">
            <div class="coml-md-3">
                <div class="card paint-card">
                    <div class="card-body text-center">
                        <img src="img/doct1.jpg" width="250px" height="300px">
                        <p class="fw-bold fs-5">Dao</p>
                        <p class="fs-7">(CEO & chairman)</p>
                    </div>
                </div>
            </div>
            <div class="coml-md-3">
                <div class="card paint-card">
                    <div class="card-body text-center">
                        <img src="img/doct2.jpg" width="250px" height="300px">
                        <p class="fw-bold fs-5">Dr.Shiva Kumar HTML Chir Far</p>
                        <p class="fs-7">(Chief Doctor)</p>
                    </div>
                </div>
            </div>
            <div class="coml-md-3">
                <div class="card paint-card">
                    <div class="card-body text-center">
                        <img src="img/doct3.jpg" width="250px" height="300px">
                        <p class="fw-bold fs-5">Dr.BP Singh</p>
                        <p class="fs-7">(Chief Doctor)</p>
                    </div>
                </div>
            </div>
            <div class="coml-md-3">
                <div class="card paint-card">
                    <div class="card-body text-center">
                        <img src="img/doct4.jpg" width="250px" height="300px" margin="left">
                        <p class="fw-bold fs-5">Dr.Sandeep</p>
                        <p class="fs-7">(Chief Doctor)</p>
                    </div>
                </div>
            </div>
      -->
     
</body>
</html>