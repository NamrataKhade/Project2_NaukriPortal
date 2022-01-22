package com.jobportal.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jobportal.dao.UserDAO;
import com.jobportal.db.DBConnect;
import com.jobportal.entity.User;

@WebServlet("/add_user")
public class RegisterServlet extends  HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			String fname = req.getParameter("fname");
			String qualification = req.getParameter("qualification");
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			
			UserDAO dao=new UserDAO(DBConnect.getConn());
			
			User u=new User(fname,qualification,email,password,"User");
			boolean f=dao.addUser(u);
			
			
			HttpSession session=req.getSession();
			
			if(f)
			{
				session.setAttribute("succMsg", "Registration Successfully !!");
				resp.sendRedirect("signup.jsp");
				
				
			}else {
				session.setAttribute("succMsg", "Something wrong on server ");
				resp.sendRedirect("register.jsp");
			}
			
			
			
					
			
		} catch (Exception e) {
			
		}
		
	}

	
}
