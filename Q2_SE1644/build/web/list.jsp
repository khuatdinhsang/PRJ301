<%-- 
    Document   : list.jsp
    Created on : Sep 15, 2022, 1:45:26 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.util.ArrayList" %>
<%@page import ="model.Student" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1px">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Age</th>
                <th>Gender</th>
            </tr>
            <%
            ArrayList<Student> list = (ArrayList<Student>) request.getAttribute("listStudent");
            for(Student i:list){
            %>
            <tr>
                <td><%=i.getId()%></td>
                <td><%=i.getName()%></td>
                <td><%=i.getAge()%></td>
                <td>
                    <%= i.isGender() ?"ConTrai" :"Con Gai"%>
                </td>
            </tr>
            <%
                }
            %>
        </table>
        
    </body>
</html>
