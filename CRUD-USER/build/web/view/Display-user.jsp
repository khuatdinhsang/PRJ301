<%-- 
    Document   : list
    Created on : Sep 18, 2022, 8:53:20 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>List  User</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <jsp:useBean id="b" class="DAO.UserDAO"/>
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
                    <h2 class="text-center">List User</h2>
                </div>
                <a href="./user?action=AddOrEdit" class="btn btn-primary">ADD USERS</a>

                <div class="panel-body">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Username</th>
                                <th>Password</th>
                                <th>Fullname</th>
                                <th>Age</th>
                                <th>Date</th>
                                <th>Gender</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="i" items="${b.all}" varStatus="loop">
                                <tr>
                                    <td>${loop.index +1}</td>
                                    <td>${i.getUsername()}</td>
                                    <td>${i.getPassword()}</td>                                 
                                    <td>${i.getFullname()}</td>                                 
                                    <td>${i.getAge()}</td>                                 
                                    <td><fmt:formatDate value="${i.getDate()}" pattern ="dd/MM/yyyy"/></td>                                 
                                    <td>${i.isGender() ?"Nam" :"Nu"}</td>                                 
                                    <td>
                                        <a class="btn btn-primary btn-sm"
                                           href="./user?action=AddOrEdit&username=${i.getUsername()}">Edit</a>
                                        <a class="btn btn-primary btn-sm"
                                           href="./user?action=Delete&username=${i.getUsername()}">Del</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
