<%-- 
    Document   : Login.jsp
    Created on : Sep 7, 2022, 1:27:03 PM
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
        <h1>Hello World!</h1>
        <form action="LoginControl" method="post" >
            <label>UserName</lable>
            <input type="text" name="username"/></br>
            <label>Password</lable>
            <input type="password" name="password"/></br>
            <input type="submit" value="Login"/>
        </form>
    </body>
</html>
