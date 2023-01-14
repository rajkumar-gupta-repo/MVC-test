<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%@include file="all.jsp"%>
<link href="css/style.css" rel="stylesheet">

<title>Register</title>
</head>
<body>

	<div class="container">
		<h1>
			<center>Register</center>
		</h1>

		<form action="savereg" method="post">
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
					<input type="password" class="form-control" name="password"
						required placeholder="Password">
				</div>
			</div>


			<div class="form-group row" center>
				<div class="col-sm-10">
					<button type="submit" class="btn btn-success">Register</button>
				</div>
			</div>
		</form>





	</div>



</body>
</html>