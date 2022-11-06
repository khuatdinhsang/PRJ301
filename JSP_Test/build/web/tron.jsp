<%-- 
    Document   : tron
    Created on : Sep 8, 2022, 8:18:41 PM
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
        <form action="tinh" method="post">
            enter radius: <input type="text" name="r"/>
            <input type="submit" value="SUBMIT"/>
        </form>
        <%
            if (request.getAttribute("dt")!=null){
            double s=(double)request.getAttribute("dt");
        %>
        <h5 style="color:red">Dien tich <%= s%></h5>
        <%
            }
         %>
    </body>
</html>
