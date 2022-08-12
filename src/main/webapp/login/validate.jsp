<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import ="java.sql.*" %>
<%
    try{
        String email = request.getParameter("email");   
        String password = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sonu?" + "user=root&password=12345");    
        PreparedStatement pst = conn.prepareStatement("Select email,password from user where email=? and password=?");
        pst.setString(1, email);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())           
        	response.sendRedirect("rmap.html");       
        else
        	response.sendRedirect("error.html");   
               
   }

   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>