<%-- 
    Document   : list
    Created on : Sep 8, 2022, 9:02:50 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.util.ArrayList" %>
<%@page import= "model.Student" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Day la danh sach sinh vien!</h1>
        <table border="1px">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>DOB</th>
                <th>Gender</th>
            </tr>
            <%
            ArrayList<Student> list =  (ArrayList<Student>) request.getAttribute("data");
            for(Student i:list){
            %>
            <tr>
                <td><%=i.getId()%></td>
                <td><%=i.getName()%></td>
                <td><%=i.getDob()%></td>
                <td>
                    <img <%= (i.isGender()?"src='images/male.jpg'":"src='images/female.jpg'")%>s width="30px" height="30px"/>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
