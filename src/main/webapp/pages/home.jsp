<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<%@include file="all.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<div class="container">
		<%@include file="message.jsp"%>

		<div class="jumbotron">
			<h1 class="display-4">Welcome ! ${user.uname}</h1>
			<p class="lead">This is a simple website Lorem ipsum dolor sit
				amet, consectetur adipiscing elit. Morbi at sodales nulla. Praesent
				a enim sed ligula faucibus viverra. Mauris arcu nulla, suscipit sit
				amet tincidunt nec, suscipit at lectus. Aenean lacinia augue id
				sapien rutrum blandit. Donec</p>
			<hr class="my-4">
			<p>It uses utility classes for typography and spacing to space
				content out within the larger container.</p>

		</div>


		<table class="table">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Name</th>
					<th scope="col">Username</th>
					<th scope="col">Password</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="user">
					<tr>
						<th scope="row">${user.uid}</th>
						<td>${user.name}</td>
						<td>${user.uname}</td>
						<td>${user.password}</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>




	</div>

</body>
</html>