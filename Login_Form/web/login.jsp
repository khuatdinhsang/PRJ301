<%-- 
    Document   : login.jsp
    Created on : Oct 11, 2022, 8:49:52 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login Form</h1>
        <h3 style="color:red">${requestScope.ms}</h3>
        <form action ="login" method="post">
            Username: <input type="text" name="user"/></br>
            Password:<input type="password" name="pass"/><br/><!-- comment -->
            <input type="submit" value="LOGIN"/>
        </form>
    </body>
</html>
