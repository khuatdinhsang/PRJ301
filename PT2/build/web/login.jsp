<%-- 
    Document   : login.jsp
    Created on : Oct 12, 2022, 11:04:04 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>Login Form</h1>
        <h1 style="color:red">${requestScope.error}</h1>
        <form action="login" method="post">
            <table>
                <tr>
                    <th>UserName</th>
                    <th><input type="text" name="username"/></th>
                </tr>
                <tr>
                    <th>Password</th>
                    <th><input type="password" name="password"/></th>
                </tr>
            </table>
            <input type="submit" value="Login"/>
        </form>
    </center>
</body>
</html>
