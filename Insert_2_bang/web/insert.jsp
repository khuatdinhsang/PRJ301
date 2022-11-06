<%-- 
    Document   : insert.jsp
    Created on : Oct 18, 2022, 2:37:13 PM
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
        <form action="add">
            UserID: <input type="text" name="userid"/><br/>
            Password: <input type="password" name="pass"/><br/>
            Groups: </br><!-- }comment -->
            <c:forEach items="${requestScope.data}" var="g">
                <input type="checkbox" name="group" value="${g.groupId}"/> ${g.name}<br/>
            </c:forEach>
                <input type="submit" value="ADD"/>
        </form>
    </body>
</html>
