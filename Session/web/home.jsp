<%-- 
    Document   : home.jsp
    Created on : Sep 30, 2022, 9:28:18 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nhập danh sách </h1>
        <form action="nhap">
            nhap ho va ten: <input type="text" name="name"/>
            <input type="submit" value ="NHAP DU LIEU"/>
            
        </form>
        <h2>Danh sach</h2>
        <h3>${sessionScope.ny}</h3>
        <h3>
            <c:set var="i" value="0"/>
            <c:forEach items="${sessionScope.names}" var="c">
                <c:set var="i" value="${(i+1)}"/>
                ${i}. ${c}<br/>
            </c:forEach>
        </h3>
    </body>
</html>
