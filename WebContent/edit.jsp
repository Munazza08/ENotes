<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.User.UserDetails"%>
<%@ page import="com.Dao.PostDao"%>
<%@ page import="com.Db.DBConnect"%>
<%@ page import="com.User.post"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Notes</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>

	<%
		Integer noteid = (Integer.parseInt(request.getParameter("note_id")));

		PostDao post = new PostDao(DBConnect.getConn());
		post p = post.getDataById(noteid);
	%>

	<div class="container-fluid p-0">
		<%@include file="all_component/navbar.jsp"%>

		<h1 class=text-center>Edit Your Notes</h1>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="NoteEditServlet" method="post">

						<input type="hidden" value="<%=noteid%>" name="noteid">
						<div class="form-group">

							<label for="exampleInputEmail1">Enter Title</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="title" required="required"
								value="<%=p.getTitle()%>" />

						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Enter Content</label>
							<textarea rows="6" class="form-control" name="content"
								required="required"><%=p.getContent()%></textarea>
						</div>
						<div class="container text-center">
							<button type="submit" class="btn btn-primary">Add Notes</button>
						</div>

					</form>
				</div>
			</div>
		</div>

	</div>
	<div class="container-fluid bg-dark" style='position:relative; top:112px;'>
        <p class="text-center text-white" style='padding: 5px;'>Note: Any
			Errors occurs then contact with Munazza. Designed and developed by
			Munazza Nasir</p>

		<p class="text-center text-white">All Right Reserved
			@Munazza-2023-24</p>

	</div>

</body>
</html>