<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all.jsp" %>
<title>Update</title>
</head>
<body>


	<form action="updateuser" method="post">
		<div class="form-group row">
			<label for="name" class="col-sm-2 col-form-label">ID</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="uid" required
					placeholder="Enter id">
			</div>
		</div>

		<div class="form-group row">
			<label for="name" class="col-sm-2 col-form-label">Name</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="name" required
					placeholder="Enter Name">
			</div>
		</div>
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
				<input type="password" class="form-control" name="password" required
					placeholder="Password">
			</div>
		</div>


		<div class="form-group row" center>
			<div class="col-sm-10">
				<button type="submit" class="btn btn-success">update</button>
			</div>
		</div>
	</form>

</body>
</html>