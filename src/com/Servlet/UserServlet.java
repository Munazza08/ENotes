package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.UserDao;
import com.Db.DBConnect;
import com.User.UserDetails;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet{
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		String name=request.getParameter("fname");
		String email=request.getParameter("uemail");
		String password=request.getParameter("upassword");
	
	    UserDetails us=new UserDetails();
	    us.setName(name);
	    us.setEmail(email);
	    us.setPassword(password);
	
	    UserDao dao=new UserDao(DBConnect.getConn());
	    boolean f=dao.addUser(us);
	    HttpSession session;
	    
	    if(f)
	    {
	    	session=request.getSession();
	    	session.setAttribute("reg-sucess","Registration Sucessfully..");
	        response.sendRedirect("register.jsp");
	    }
	    else {
	    	session=request.getSession();
	    	session.setAttribute("failed-msg","Something went wrong on Server");
	        response.sendRedirect("register.jsp");
	     }
	
	}
	
}
