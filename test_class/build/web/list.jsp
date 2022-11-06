<%-- 
    Document   : list.jsp
    Created on : Oct 11, 2022, 3:38:06 PM
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
        <table border="1px">
            <tr>
                <th>EventID</th>
                <th>Content</th>
                <th>Occur</th>
                <th>Is Enable</th>
                <th>Owner</th>
            </tr>
            <tr>
                <c:forEach items="${requestScope.data}" var="e">
                <tr>
                    <td>${e.id}</td>
                    <td>${e.content}</td>
                    <td>${e.date}</td>
                    <td>
                        <input type="checkbox" ${e.isEnable==true?"checked":""} />
                    </td>
                    <td>${e.createBy}</td>
                </tr>
                </c:forEach>
            </tr>
        </table>
    </body>
</html>
