<%-- 
    Document   : newjsp
    Created on : Sep 13, 2022, 1:14:39 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            int i=1;
            String name="Sang dep trai";
            int tuoi=20;
            SimpleDateFormat f= new SimpleDateFormat("dd/MM/yyyy");
         %>
         <table border="1px">
             <tr>
                 <th>STT</th>
                 <th>Name</th>
                 <th>Age</th>
             </tr>
             <tr>
                 <th><%=i%></th>
                 <th><%=name%></th>
                 <th><%=tuoi%></th>
             </tr>
         </table>
             <h3>Ngay hom nay la: <%= f.format(new Date()) %></h3>
    </body>
</html>
