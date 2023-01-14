<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="all.jsp"%>
<link href="css/style.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>

	<div class="container">
		<%
		String regsuc = (String) session.getAttribute("regsuc");

		if (regsuc != null) {
		%>

		<div style="margin-top: 20px"
			class="alert alert-success alert-dismissible fade show" role="alert">
			<span><%=regsuc%></span>
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>


		<%
		session.removeAttribute("regsuc");
		}
		%>


		<%
		String error = (String) session.getAttribute("error");

		if (error != null) {
		%>

		<div style="margin-top: 20px"
			class="alert alert-danger alert-dismissible fade show" role="alert">
			<span><%=error%></span>
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>


		<%
		session.removeAttribute("error");
		}
		%>


		<h1>
			<center>Login</center>

		</h1>


		<form action="checklogin" method="POST">

			<div class="form-group row">
				<label for="name" class="col-sm-2 col-form-label">Username</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="uname" required
						placeholder="Enter Username">
				</div>
			</div>
			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" name="password"
						required placeholder="Password">
				</div>
			</div>


			<div class="form-group row" center>
				<div class="col-sm-10">
					<button type="submit" class="btn btn-success">Login</button>
				</div>
			</div>
		</form>





	</div>



</body>
</html>