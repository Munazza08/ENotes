package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.PostDao;
import com.Db.DBConnect;
import com.User.post;

@WebServlet("/addNotesServlet")
public class addNotesServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		
		int uid=Integer.parseInt(request.getParameter("uid"));
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		
			PostDao dao=new PostDao(DBConnect.getConn());
			boolean f=dao.AddNotes(title,content,uid);
	
	        if(f)
	        {
	        	System.out.println("Data inserted successfully.");
	        	response.sendRedirect("showNotes.jsp");
	        }
	        else {
	        	System.out.println("Data not Inserted.");
	        }
	}
}
