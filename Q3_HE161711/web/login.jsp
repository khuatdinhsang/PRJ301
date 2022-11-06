    <%-- 
    Document   : login
    Created on : Oct 6, 2022, 2:05:45 PM
    Author     : This Pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="login" method="post">
            <div>Username: <input type="text" name="username" /></div>
            <div>Password:  <input type="password" name="password" /></div>
            <button>Login</button>
        </form>
        <p>${requestScope.mess}</p>  

    </body>
</html>
