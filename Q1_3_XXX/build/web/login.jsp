<%-- 
    Document   : login.jsp
    Created on : Oct 20, 2022, 10:31:47 AM
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
        <form method="post" action="login">
            <h3 style="color:red">${sessionScope.error}</h3>
            Username: <input type="text" value="${sessionScope.account.username}"name="username"/></br>
            Password: <input type="text" value="${sessionScope.account.password}" name="password"/></br>
            <input type="submit" value="Login">
        </form>
    </body>
</html>
