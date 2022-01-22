<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="base/all_css.jsp"%>
<meta charset="ISO-8859-1">
<title>Sign up</title>
</head>
<body>
	<%@include file="base/navbar.jsp"%>


	<div class="container py-5 h-100">
		<div
			class="row d-flex justify-content-center align-items-center h-100">
			<div class="col-12 col-md-8 col-lg-6 col-xl-5">
				<div class="card shadow-2-strong" style="border-radius: 1rem;">
					<div class="card-body p-5 " style="background-color: #add8e6">

						<h3 class="mb-5 text-center">Registration</h3>



						<c:if test="${not empty succMsg}">

							<div class="alert alert-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg" />
						</c:if>
	

						<form action="add_user" method="post">
							<div class="form-outline mb-4">
								<label class="form-label" for="typeEmailX-2">Enter Full
									Name Here</label> <input type="text" id="typeEmailX-2"
									class="form-control form-control-lg" name="fname" />
							</div>

							<div class="form-outline mb-4">
								<label class="form-label" for="typeEmailX-2">Enter
									Qualification</label> <input type="text" id="typeEmailX-2"
									class="form-control form-control-lg" name="qualification" />
							</div>


							<div class="form-outline mb-4">
								<label class="form-label" for="typeEmailX-2">Email</label> <input
									type="email" id="typeEmailX-2"
									class="form-control form-control-lg" name="email" />
							</div>

							<div class="form-outline mb-4">
								<label class="form-label" for="typePasswordX-2">Password</label>
								<input type="password" name="password" id="typePasswordX-2"
									class="form-control form-control-lg" />

							</div>



							<button class="btn btn-primary btn-lg btn-block" type="submit">Register</button>

						</form>

					</div>
				</div>
			</div>
		</div>
	</div>


	<%@include file="base/footer.jsp"%>
</body>
</html>