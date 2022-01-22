
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored = "false" %>>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="base/all_css.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/admin.jpeg");
	backgroun-color: #800000;
	width: 100%;
	height: 80vh;
	background-reapt: no-reapt;
	background-size: cover;
}
</style>
<meta charset="ISO-8859-1">
<title>Admin panel</title>
</head>
<body>

	<c:if test="${userobj.role ne 'admin'}">
		<c:redirect url="login.jsp"></c:redirect>

	</c:if>


	<%@include file="base/navbar.jsp"%>
	<div class="container-fluid back-img mt-5">
		<div class="text-center">
			<h1 class="text-white p-4">Welcome Admin</h1>

		</div>
	</div>
</body>
</html>