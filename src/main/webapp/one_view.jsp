
<%@ page import="com.jobportal.dao.JobDAO"%>
<%@ page import="com.jobportal.db.DBConnect"%>
<%@ page import="java.util.List"%>
<%@ page import="com.jobportal.entity.Jobs"%>
<%@ page import="com.jobportal.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="base/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2">

	<%-- <c:if test="${empty userobj}">

		<c:redirect url="login.jsp" />

	</c:if> --%>

	<%@include file="base/navbar.jsp"%>
 
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<%
				int id = Integer.parseInt(request.getParameter("id"));
				JobDAO dao = new JobDAO(DBConnect.getConn());
				Jobs j = dao.getJobsById(id);
				%>

				<div class="card mt-5">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="far fa-clipboard fa-2x"></i>
						</div>

						<h6><%=j.getTitle()%></h6>
						<p><%=j.getDescription()%></p>

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
							<%=j.getPdate().toString()%>
						</h6>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>