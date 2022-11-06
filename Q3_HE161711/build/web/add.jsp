<%-- 
    Document   : add.jsp
    Created on : Nov 5, 2022, 2:36:38 PM
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
        <c:if test="${sessionScope.account==null}">
            <p>Access Denied</p>
            </c:if>
        <c:if test="${sessionScope.account!=null}">
            <div>Id: <input type="text" name="id" /></div>
            <div>Name: <input type="text" name="name" /></div>
            <div>Date: <input type="date" name="date" /></div>
            <div>Gender
           Male <input type="radio" name="gender"/>
            Female<input type="radio" name="gender"/>
            </div>
            <div>
                Certificate:
                
            </div>
            </c:if>
    </body>
</html>
