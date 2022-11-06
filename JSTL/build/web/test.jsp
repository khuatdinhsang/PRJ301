<%-- 
    Document   : test.jsp
    Created on : Sep 13, 2022, 8:21:14 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!111</h1>
        <input name="num" type="text"/>
        <c:set var="s" value="${requestScope.st}"/>
        <h2>Hello ${requestScope.name}</h2>
        <h1>${s.gender?'Con Trai':'Con Gai'}</h1>
        <c:if
            test="${s.mark <5}">
            <h3>Fail</h3>
        </c:if>
        <c:if
            test="${s.mark >=5}">
            <h3>Pass</h3>
        </c:if>
        <h1>Danh sách sinh viên</h1>
        <table border ="1px">
            <tr>
                <th>STT</th>
                <th>ID</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Mark</th>
            </tr>
            <c:forEach items="${requestScope.data}" var="i" varStatus="loop">
                <tr>
                    <td>${loop.index+1}</td>
                    <td>${i.id}</td>
                    <td>${i.name}</td>
                    <td>${i.gender}</td>
                    <td>${i.mark}</td>
                </tr>
            </c:forEach>

        </table>
        <c:set var="num1" value="9" scope="page"/>

        <form>
            so 1: <input type="number" name="n1" />
            so 2: <input type="number" name="n2"/>
            <c:set var="rs" value="${param.n1/param.n2}"/>
            <fmt:formatNumber pattern="##.##" value="${rs}"/>
            <fmt:formatNumber pattern="##.####" value="${rs}"/>
            ketqua <c:out value="${rs}"/>
            <input type="submit" value="Chia"/>
            code :<input  type="text" name="code" value ="${param.code}"/>

        </form>
        Hom nay :<%= new java.util.Date()%>
        </br>
        <fmt:formatDate pattern="dd/MM/yyyy" value ="<%= new java.util.Date()%>"/>

        KQ:  ${fn:toUpperCase(param.code)}


    </body>
</html>

