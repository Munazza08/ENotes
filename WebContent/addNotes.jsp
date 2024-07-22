<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.User.UserDetails"%>
<%
	UserDetails user1 = (UserDetails) session.getAttribute("userD");

	if (user1 == null) {
		response.sendRedirect("login.jsp");
		session.setAttribute("Login-error", "Please Login..");
	}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>

	<div class="container-fluid p-0">
		<%@ include file="all_component/navbar.jsp"%>

		<h1 class=text-center>Add Your Notes</h1>

		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="addNotesServlet" method="post">
						<div class="form-group">
							<%
								UserDetails us = (UserDetails) session.getAttribute("userD");
								if (us != null) {
							%>
							<input type="hidden" value="<%=us.getId()%>" name="uid">
							<%
								}
							%>

							<label for="exampleInputEmail1">Enter Title</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="title" required="required">

						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Enter Content</label>
							<textarea rows="10" class="form-control" name="content"
								required="required"></textarea>
						</div>
						<div class="container text-center">
							<button type="submit" class="btn btn-primary">Add Notes</button>
						</div>

					</form>
				</div>
			</div>
		</div>

	</div>
	<div class="container-fluid bg-dark mt-4">
		<p class="text-center text-white" style='padding: 5px;'>Note: Any
			Errors occurs then contact with Munazza. Designed and developed by
			Munazza Nasir</p>

		<p class="text-center text-white">All Right Reserved
			@Munazza-2023-24</p>

	</div>



</body>
</html>