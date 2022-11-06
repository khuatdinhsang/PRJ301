<%-- 
    Document   : home
    Created on : Oct 11, 2022, 1:27:33 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach items="${pageContext.request.cookies}" var="c">
            ${c.name}- ${c.value} <br/>
        </c:forEach>
    </body>
</html>
