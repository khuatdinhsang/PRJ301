<%-- 
    Document   : search
    Created on : Oct 20, 2022, 9:26:39 AM
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
            Account: <select name="name" >
                <c:forEach items="${requestScope.dataname}" var="a">
                    <option ${a.username==requestScope.name?"selected":""} value="${a.username}">${a.displayName}</option>
                </c:forEach>
            </select>
            <input type="submit" value="Search"/>
        </form>
        <table border="1px">
            <thead>
                <tr>
                    <th>MemberId</th>
                    <th>Name</th>
                    <th>Dob</th>
                    <th>Gold Member</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${requestScope.listS}" var="s" >
                    <tr>
                        <td>${s.id}</td>
                        <td>${s.name}</td>
                        <td>${s.dob}</td>
                        <td>${s.gold_member?'Yes':'No'}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
