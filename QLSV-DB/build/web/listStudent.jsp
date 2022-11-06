<%-- 
    Document   : register
    Created on : Sep 16, 2022, 9:09:17 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>List  Student</title>
        <jsp:useBean id="t" class="servlet.check" scope="request"></jsp:useBean>
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
                        <h2 class="text-center">List Student</h2>
                    </div>
                    <div class="panel-body">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>No.1</th>
                                    <th>Name</th>
                                    <th>Age</th>
                                    <th>Address</th>
                                    <th>Action</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${t.listStudent}" var="s">
                                <tr>
                                    <td>${s.id}</td>
                                    <td>${s.name}</td>
                                    <td>${s.age}</td>
                                    <td>${s.address}</td>
                                    <td>
                                        <form method="post" action="list">
                                            <input type="text" value="${s.id}" name="id" style="display:none"/>
                                            <button class="btn btn-warning">Delete</button>
                                        </form>
                                    </td>
                                    <td>
                                        <a href="add?id=${s.id}">
                                            <button class="btn btn-danger">Edit</button>
                                        </a>
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