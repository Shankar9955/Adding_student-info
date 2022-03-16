<%@page import="java.util.ArrayList"%>
<%@page import="com.StudentInfo.Model.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Student Details</title>
<%@include file="bootstrapLink/include.jsp"%>
<style >
table,tr{
border: 1px solid Black;
}
</style>
</head>
<body>
<%ArrayList<Student> students= (ArrayList<Student>) request.getAttribute("student"); %>
<div class="container">

 <div class="card w-10 mx-auto my-5">

                <div class="card-header text-center">Student Details</div>

                <div class="card-body">
<table >
	<tr>
		<th>Name</th>
		<th>PRN Number</th>
		<th>Branch</th>
		<th>Mobile No.</th>
		<th>Email</th>
		<th>Password</th>
	</tr>
	<% for (Student s: students){ %>
	<tr>
		<td><%= s.getName() %> &nbsp; &nbsp;</td>
		<td><%= s.getPrn() %>&nbsp; &nbsp;</td>

		<td><%= s.getBranch() %>&nbsp;&nbsp;</td>
		<td><%= s.getMobile() %>&nbsp;&nbsp;</td>
		<td><%= s.getEmail() %>&nbsp;&nbsp;</td>

		<td><%= s.getPassword() %></td>
	</tr>
	
	<%} %>
</table>
</div>
</div>
</
</div>
</body>
</html>