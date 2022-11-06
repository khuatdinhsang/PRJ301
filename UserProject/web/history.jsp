<%-- 
    Document   : register
    Created on : Sep 16, 2022, 9:09:17 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.util.List" %>
<%@page import ="java.util.ArrayList" %>
<%@page import ="model.User" %>
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
        List<User> userList=null;
        if (session.getAttribute("userList")!=null){
            userList= (List<User>)session.getAttribute("userList");
        }else {
            userList= new ArrayList<>();
        }
        %>
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h2 class="text-center">All User List</h2>
			</div>
			<div class="panel-body">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <td>STT</td>
                                        <td>Name</td>
                                        <td>Email</td>
                                        <td>Birth</td>
                                        <td>Address</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        int index=1;
                                        for(User user : userList){
                                        %>
                                        }
                                        <tr>
                                            <td><%=index++%></td>
                                            <td><%=user.getName()%></td>
                                            <td><%=user.getEmail()%></td>
                                            <td><%=user.getBirthday()%></td>
                                            <td><%=user.getAddress()%></td>
                                        </tr>
                                        <%
                                        }
                                        %>
                                </tbody>
                            </table>
                        </div>
		</div>
	</div>
</body>
</html>