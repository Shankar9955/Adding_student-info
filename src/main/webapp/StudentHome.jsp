<%@page import="org.springframework.web.servlet.ModelAndView"%>
<%@page import="org.springframework.ui.Model"%>
<%@page import="com.StudentInfo.Model.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%
	Student s=(Student)request.getAttribute("student"); 
	if(s == null){
		request.setAttribute("msg", "not Loged in");
		response.sendRedirect("Login.jsp");
		return;
	}

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Profile</title>
<%@include file="bootstrapLink/include.jsp"%>
</head>
<body>


<div class="container">
            <div class="card w-30 mx-auto my-5">

                <div class="card-header text-center">Student Details</div>
                <div class="card-body">
                    <form>

                        <div class="form-group">
                            <label>Name</label> 
                            <input type="text" name="prn" class="form-control" value="<%= s.getName() %>" readonly>
                        </div>
                        <div class="form-group">
                            <label>PNr Number</label> 
                            <input type="text" name="prn" class="form-control" value="<%= s.getPrn() %>" readonly>
                        </div>
                        <div class="form-group">
                            <label>Branch</label> 
                            <input type="text" name="prn" class="form-control" value="<%= s.getBranch() %>" readonly>
                        </div>
                        <div class="form-group">
                            <label>Mobile No.</label> 
                            <input type="text" name="prn" class="form-control" value="<%= s.getMobile() %>" readonly>
                        </div>
                        <div class="form-group">
                            <label>Email</label> 
                            <input type="text" name="prn" class="form-control" value="<%= s.getEmail() %>" readonly>
                        </div>
                        <div class="form-group">
                            <label>Password</label> 
                            <input type="text" name="prn" class="form-control" value="<%= s.getPassword() %>" readonly>
                        </div>
                    </form>
                </div>
            </div>
        </div>
</body>
</html>