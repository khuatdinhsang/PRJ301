<%-- 
    Document   : form
    Created on : Sep 15, 2022, 1:09:01 PM
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
        <form action="getfirst" method="post">
        <h1>HE161711</h1>
        get first <input type="text" name="roll"/> letter(s)
        <input type="submit" value="Get"/>
        <form/>
        <h1>Sang <%= config.getInitParameter("title")%></h1>
    </body>
</html>
