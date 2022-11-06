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
    <%
       String mess= (String)request.getAttribute("msg");
        %>
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h2 class="text-center">Login-Form</h2>
                                <h3 style='color:red'><%=mess%></h3>
			</div>
			<div class="panel-body">
                            <form method="post" action="dang-nhap">
				<div class="form-group">
				  <label for="email">Email:</label>
				  <input required="true" name="email"type="email" class="form-control" id="email">
				</div>
                                <div class="form-group">
				  <label for="pwd">Password:</label>
				  <input required="true" name="password"type="password" class="form-control" id="pwd">
				</div>
				<button class="btn btn-success">Register</button>
			</form>
                        </div>
		</div>
	</div>
</body>
</html>