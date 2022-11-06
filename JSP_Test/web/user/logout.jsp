<%-- 
    Document   : logout
    Created on : Sep 11, 2022, 8:37:15 PM
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
        <%
//            response.sendRedirect("/JSP_Test/test.jsp");
response.setStatus(301);
response.addHeader("Location","/JSP_Test/test.jsp");
            %>
    </body>
</html>
