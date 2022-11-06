<%-- 
    Document   : search.jsp
    Created on : Nov 5, 2022, 10:35:56 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="search">
                Account:
                <select name="account">
                    <c:forEach items="${requestScope.accountName}" var="a">
                        <option ${requestScope.check==a.username ?"selected":""} value="${a.username}"> ${a.displayName}</option>
                    </c:forEach>
                </select>
                <button>Search</button
        </form>
        <table border="1px">
            <tr>
                <td>Employee Id</td>
                <td>Name</td>
                <td>Dob</td>
                <td>Gender</td>
            </tr>
            <c:forEach items="${requestScope.list}" var="e">
                <tr>
                    <td>${e.id}</td>
                    <td>${e.name}</td>
                    <td>${e.dob}</td>
                    <td>${e.gender ==true ?"male":"female"}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
