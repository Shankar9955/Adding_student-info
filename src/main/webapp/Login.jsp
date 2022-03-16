<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<%@include file="bootstrapLink/include.jsp"%>
</head>
<body>



	 <div class="container">
            <div class="card w-50 mx-auto my-5">

                <div class="card-header text-center">Student Login</div>

                <div class="card-body">
                    <form action="checkUser" method="post">

                        <div class="form-group">
                            <label>PRN No</label> 
                            <input type="text" name="prn" class="form-control" placeholder="Enter Prn No">
                        </div>
                        <div class="form-group mt-2">
                            <label>Password</label> 
                            <input type="password" name="password" class="form-control" placeholder="Password">
                        </div>
                        <div><%@include file="ValidationStatus/validation.jsp" %></div>
                        <div class="text-center mt-2">
                            <button type="submit" class="btn btn-primary">Login</button>
                            <a href="register.jsp" class="btn btn-dark text-white">Register Here</a>
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>
</body>
</html>