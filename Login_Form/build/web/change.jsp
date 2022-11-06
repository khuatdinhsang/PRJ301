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
        <h1>Change PassWord Form</h1>
        <h3 style="color:red">${requestScope.mess}</h3>
        <form action ="change" method="get">
           Old Password:<input type="password" name="opass"/><br/><!-- comment -->
           <input type="hidden" name="user" value="${sessionScope.account.username}"/>
           New Password:<input type="password" name="npass"/><br/><!-- comment -->
            Confirm Password:<input type="password" name="rpass"/><br/><!-- comment -->
            <input type="submit" value="Change"/>
        </form>
    </body>
</html>
