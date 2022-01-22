<%@ page import="com.jobportal.db.DBConnect"%>
<%@ page import="java.sql.Connection"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="base/all_css.jsp"%>
</head>

<style type="text/css">
.back-img {
	background: url("img/back.jpeg");
	width: 100%;
	height: 80vh;
	background-reapt: no-reapt;
	background-size: cover;
}
</style>
<body>

	<%@include file="base/navbar.jsp"%>
	
	<%-- <%Connection conn=DBConnect.getConn(); 
	out.println(conn);
	
	
	%>
	 --%>

	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-white p-4">
				<i class="fa fa-book" aria-hidden="true"></i>Online Job Portal
			</h1>

		</div>
	</div>
	
	<%@include file="base/footer.jsp"%>

</body>
</html>