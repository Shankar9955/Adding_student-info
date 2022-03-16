<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form</title>
<%@include file="bootstrapLink/include.jsp"%>
</head>
<body>

	<div class="container ">
		 <div class="card w-10 mx-auto my-2">

                <div class="card-header text-center">Register Here</div>

                <div class="card-body">
                
		<form action="register" method="post">
			<div class="mb-3">
				<label class="form-label">Enter Name</label>
				 <input type="text" class="form-control" name="name" required >
			</div>
			<div class="mb-3">
				<label class="form-label">Enter PRN Number</label>
				 <input type="text" class="form-control" name="prn"required>
			</div>
			<div class="mb-3">
				<label class="form-label">Enter Branch</label>
				 <input type="text" class="form-control"name="branch" required>
			</div>
			<div class="mb-3">
				<label class="form-label">Enter Mobile No.</label>
				 <input type="number" class="form-control"name="mobile" required>
			</div>
			<div class="mb-3">
				<label class="form-label">Enter Email Id</label>
				 <input type="text" class="form-control"name="email" required>
			</div>
			<div class="mb-3">
				<label class="form-label">Enter Password</label>
				 <input type="password" class="form-control"name="password" required>
			</div>
			<div class="container text-center">
			<button type="submit" class="btn btn-primary">Submit</button>
			</div>
		</form>

	</div>

</div>
</div>
</body>
</html>