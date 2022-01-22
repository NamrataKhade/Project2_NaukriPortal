
<%@ page import="com.jobportal.dao.JobDAO"%>
<%@ page import="com.jobportal.db.DBConnect"%>
<%@ page import="java.util.List"%>
<%@ page import="com.jobportal.entity.Jobs"%>
<%@ page import="com.jobportal.dao.UserDAO"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="base/all_css.jsp"%>

</head>
<body style="background-color: #f0f1f2">
	<h1>Home</h1>
	<%@include file="base/navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<h5 class="text-center text-primary">All Jobs</h5>
				
				<div class="card">
					<div class="card-body">


					<form action="more_view.jsp" class="form-inline" method="get">

						<div class="form-group col-md-5  mt-1">
							<h5>Location</h5>
						</div>

						<div class="form-group col-md-4 mt-1">
							<h5>Category</h5>
						</div>

						<div class="form-group col-md-5  mt-1">
							<select name="loc" class="custom-select" id="location">
								<option selected value="lo">Choose...</option>
								<option value="pune">pune</option>
								<option value="mumbai">mumbai</option>
								<option value="keral">keral</option>
								<option value="delhi">delhi</option>
								<option value="maharashtra">maharashtra</option>
								<option value="nashik">nashik</option>
								<option value="nagpur">nagpur</option>

							</select>

						</div>

						<div class="form-group col-md-5">
							<select name="cat" class="custom-select" id="category">
								<option selected value="ca">Choose...</option>
								<option value="IT">IT</option>
								<option value="Developer">Developer</option>
								<option value="Banking">Banking</option>
								<option value="Engineer">Engineer</option>
								<option value="Teacher">Teacher</option>


							</select>
						</div>

						<button class="btn btn-success">Submit</button>
					</form>

				</div>


			</div>

			<%
			JobDAO dao=new JobDAO(DBConnect.getConn());
			List<Jobs> list=dao.getAllJobsForUser();
			
			for(Jobs j:list)
			{
				%>
			<div class="card mt-2">
				<div class="card-body">
					<div class="text-center text-primary">
						<i class="far fa-clipboard fa-2x"></i>
					</div>

					<h6><%=j.getTitle() %>
					</h6>

					<%
				if(j.getDescription().length()>0 && j.getDescription().length()<120){
				%>
					<p><%=j.getDescription() %>.
					</p>
					<%
				}else{
				%>
					<p><%=j.getDescription().substring(0,120) %>....
					</p>
					<%
				}
				%>


					<br>
					<div class="form-row">

						<div class="form-group col-md-3">
							<input type="text" class="form-control form-control-sm"
								value="Location:<%=j.getLocation()%>" readonly>
						</div>

						<div class="form-group col-md-3">
							<input type="text" class="form-control form-control-sm"
								value="Category:<%=j.getCategory()%>" readonly>
						</div>
					</div>

					<h6>
						Publish Date:
						<%=j.getPdate().toString() %>
					</h6>

					<div class="text-center">
						<a href="one_view.jsp?id=<%=j.getId()%>"
							class="btn btn-success text-white">View More </a>

					</div>
				</div>
			</div>
			

		<%
			}
		%>
		</div>
		</div>
		


</body>
</html>