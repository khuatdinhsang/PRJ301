<%-- 
    Document   : test2
    Created on : Sep 11, 2022, 8:27:18 PM
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
        <h1>day la test 2!</h1>
        <%
          String id= request.getParameter("id");
           
         %>
         <h1>ID la : <%= id%></h1>
         
         <a href="logout.jsp">Dang xuat</a>
    </body>
</html>
