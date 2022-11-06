<%-- 
    Document   : update.jsp
    Created on : Oct 12, 2022, 10:27:58 PM
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
    <center>
        <h1>Edit student</h1>
        <form action="update" method="post">
            <c:set var="s" value="${requestScope.student}"></c:set>
                <table>
                    <tr>
                        <th>Enter ID :</th>
                        <input type="text" style="display: none" value="${s.ID}" name="id"/>
                    <th><input type="text" readonly  value ="${s.ID}"/></th>
                </tr>
                <tr>
                    <th>Enter Name :</th>
                    <th><input type="text"  value ="${s.name}"name="name"/></th>
                </tr>
                <tr>
                    <th>Enter Dob :</th>
                    <th><input type="date" value="${s.dob}" name="dob"/></th>
                </tr>
                <tr>
                    <th>Enter Gender :</th>
                    <th>
                        <input type="radio" name="gender" value ="1"${s.gender == 1?"checked":""}/>Male
                        <input type="radio" name="gender" value="0" ${s.gender == 0?"checked":""}/>Female
                    </th>
                </tr>
                <tr>
                    <th>Enter Address :</th>
                    <th><input type="text"  value ="${s.address}"name="address"/></th>
                </tr>
            </table>
            <input type="submit" value="UPDATE"/>

        </form>
    </center>
</body>
</html>
