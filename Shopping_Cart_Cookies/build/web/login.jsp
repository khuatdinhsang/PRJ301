<%-- 
    Document   : login.jsp
    Created on : Oct 15, 2022, 10:52:36 PM
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
        <h1>Login Form!</h1>
        <h3 style="color:red">${requestScope.error}</h3>
        <form action="login" method="post">
            Enter username <input type="text" name="user"/><br/>
            Enter password <input type="password" name="pass"/><br/>
           <input type="submit" value="LOGIN"/><br/>
        </form>
    </body>
</html>
