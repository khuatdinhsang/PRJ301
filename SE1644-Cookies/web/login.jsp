<%-- 
    Document   : login
    Created on : Sep 30, 2022, 12:55:57 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login Form</h1>
        <h3 style="color:red">${sessionScope.error}</h3>
        <c:set var ="cookie" value="${pageContext.request.cookies}"/>
        
        <form action="login" method="post">
            Enter username:<input  type="text" value ="${cookie.cuser.value}" name="user"/><br/>
            Enter password:<input  type="password" value ="${cookie.cpass.value}"name="pass"/><br/>
            <input type="checkbox" ${(cookie.crem!=null ?'checked':'')}name="rem"  value="ON"/>Remember me <br/>
            <input type="submit" value="LOGIN"/>
        </form>
    </body>
</html>
