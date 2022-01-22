
<%@ page import="com.jobportal.dao.JobDAO"%>
<%@ page import="com.jobportal.db.DBConnect"%>
<%@ page import="java.util.List"%>
<%@ page import="com.jobportal.entity.Jobs"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Jobs Form</title>
<%@include file="base/all_css.jsp"%>

</head>
<body style="background-color: #f0f1f2">

	<c:if test="${userobj.role ne 'admin'}">
		<c:redirect url="login.jsp"></c:redirect>

	</c:if>
	<%@include file="base/navbar.jsp"%>

	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fas fa-user-friends fa-3x"></i>

						<%-- <c:if test="${not empty succMsg}">

							<div class="alert alert-success" role="alert">${succMsg}</div>
                            <c:remove var="succMsg" />
						</c:if> --%>

						<%
						int id = Integer.parseInt(request.getParameter("id"));
						JobDAO dao = new JobDAO(DBConnect.getConn());
						Jobs j = dao.getJobsById(id);
						%>

						<h5>Edit Jobs</h5>
					</div>



					<form action="update" method="post">


						<input type="hidden" value="<%=j.getId()%>" name="id">

						<div class="form-group">
							<label for="exampleInputEmail1">Enter Title</label> <input
								type="text" class="form-control" name="title"
								value=<%=j.getTitle()%>>

						</div>

						<div class="form-row">
							<div class="form-group col-md-4">

								<label>Location</label> <select name="location"
									class="custom-select">
									<option value="<%=j.getLocation()%>"><%=j.getLocation()%></option>
									<option value="pune">pune</option>
									<option value="mumbai">mumbai</option>
									<option value="keral">keral</option>
									<option value="delhi">delhi</option>
									<option value="maharashtra">maharashtra</option>
									<option value="nashik">nashik</option>
									<option value="nagpur">nagpur</option>

								</select>
							</div>

							<div class="form-group col-md-4">
								<label>Category</label> <select name="category"
									class="custom-select">
									<option value=<%=j.getCategory()%>"><%=j.getCategory()%></option>
									<option value="IT">IT</option>
									<option value="Developer">Developer</option>
									<option value="Banking">Banking</option>
									<option value="Engineer">Engineer</option>
									<option value="Teacher">Teacher</option>

								</select>
							</div>


							<div class="form-group col-md-4">
								<label>Status</label> <select name="status" class="form-control">
									<option value="<%=j.getStatus()%>" class="Active"><%=j.getStatus()%></option>
									<option value="Active" class="Active">Active</option>
									<option value="Inactive" class="Inactive">Inactive</option>
								</select>
							</div>
						</div>


						<div class="form-group ">
							<label>Enter Description</label>
							<textarea required row="6" cols="" name="desc"
								class="form-control"><%=j.getDescription()%></textarea>
						</div>

						<button class="btn btn-success">Update Job</button>
					</form>


				</div>




			</div>
		</div>
	</div>
</body>
</html>