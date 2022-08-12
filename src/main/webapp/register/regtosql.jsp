<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@page import="java.sql.*" %>

<%
   String First_Name = request.getParameter("First_Name");
   String Last_Name = request.getParameter("Last_Name");
   String Email = request.getParameter("Email");
   String Password = request.getParameter("Password");

 try{
     Class.forName("com.mysql.jdbc.Driver");
     Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/sonu","root","12345");
     Statement stm = con.createStatement();
     stm.executeUpdate("insert into user(First_Name,Last_Name,email,password) values('"+First_Name+"', '"+Last_Name+"' , '"+Email+"', '"+Password+"')");
     response.sendRedirect("datasucess.html");
     
   }
 catch(Exception e){

	response.sendRedirect("#");
 }
 
 
 %>