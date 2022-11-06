<%-- 
    Document   : register
    Created on : Sep 16, 2022, 9:09:17 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<title>Registation Form * Form Tutorial</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h2 class="text-center">Registation Form - Input User's Detail Information</h2>
			</div>
			<div class="panel-body">
                            <!--action="dang-ky-tai-khoan"-->
                            <form method="post" action="dang-ky-tai-khoan">
				<div class="form-group">
				  <label for="usr">Name:</label>
				  <input required="true" name="name" type="text" class="form-control" id="usr">
				</div>
				<div class="form-group">
				  <label for="email">Email:</label>
				  <input required="true" name="email"type="email" class="form-control" id="email">
				</div>
				<div class="form-group">
				  <label for="birthday">Birthday:</label>
				  <input type="date" name="birthday"class="form-control" id="birthday">
				</div>
				<div class="form-group">
				  <label for="pwd">Password:</label>
				  <input required="true" name="password"type="password" class="form-control" id="pwd">
				</div>
				<div class="form-group">
				  <label for="confirmation_pwd">Confirmation Password:</label>
				  <input required="true" name="repassword"type="password" class="form-control" id="confirmation_pwd">
				</div>
				<div class="form-group">
				  <label for="address">Address:</label>
				  <input type="text" class="form-control" name="address" id="address">
				</div>
				<button class="btn btn-success">Register</button>
			</form>
                        </div>
		</div>
	</div>
</body>
</html>