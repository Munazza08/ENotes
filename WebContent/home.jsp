<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.User.UserDetails" %>

  <%
    UserDetails user2=(UserDetails) session.getAttribute("userD");
    
    if(user2 == null){
    	response.sendRedirect("login.jsp");
    	session.setAttribute("Login-error","Please Login..");
      }
%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
 
 <div class="container-fluid p-0">
  <%@include file="all_component/navbar.jsp" %>
  <div class="card py-5">
  <div class="card-body text-center">
   <img alt="" src="image/notes.gif" class="img-fluid mx-auto" style="max-width: 300px;">
   <h1 style="color: #1565c0;">START TAKING YOUR NOTES</h1>
   <a href="addNotes.jsp" class="btn btn-outline-primary">Start Here</a>
  </div>
    
  </div>
 </div>
 
 <%@include file="all_component/footer.jsp"%>
</body>
</html>