<%-- 
    Document   : list.jsp
    Created on : Oct 18, 2022, 3:41:28 PM
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
        <table border="1px">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>DOB</th>
                    <th>Department</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${requestScope.data}" var="e">
                <tr>
                    <td>${e.id}</td>
                    <td>${e.name}</td>
                   <td>
                   <img  width="50px" height ="50px" src="images/${e.gender==true?"male.jfif":"female.jfif"}" alt="sad"  />
                    </td>
                    <td>${e.dob}</td>
                    <td>${e.depart.name}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </body>
</html>
