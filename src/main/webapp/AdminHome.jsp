
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<%@include file="bootstrapLink/include.jsp"%>
</head>
<body>
<%String s=(String) request.getAttribute("msg"); %>
	 <div class="container">
            <div class="card w-50 mx-auto my-5">

                <div class="card-header text-center">Search Student Details Using Prn No.</div>

                <div class="card-body">
                    <form action="AdminSearch" method="post">

                        <div class="form-group">
                            <label>PRN No</label> 
                            <input type="text" name="prn" class="form-control" placeholder="Search Single Student">
                        </div>
                        <div class="form-group">
                            
                            <input type="checkbox" name="getAll" value="getAll">
                            <label>Search All Student</label>
                        </div>
                      <%if (s != null){ %>
                      <div><%= s %></div>                 
                      <%} %>
   				           <div class="text-center mt-2">
                            <button type="submit" class="btn btn-primary" value="All">Search</button>
                           
                        </div>
                    </form>
                </div>
            </div>
        </div>
</body>
</html>