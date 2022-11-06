<%-- 
    Document   : list.jsp
    Created on : Oct 12, 2022, 8:11:28 PM
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
    <center>
        <h1>List of student</h1>
        <a href="add.jsp" >Add new</a>
        <table border="1px">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Dob</th>
                    <th>Gender</th>
                    <th>Address</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${sessionScope.data}" var="s">
                    <tr>
                        <td>${s.ID}</td>
                        <td>${s.name}</td>
                        <td>${s.dob}</td>
                        <td style="text-align: center">
                                <img  width ="30px" height ="30px   "src="images/${s.gender==1?"male.jfif":"female.jfif"}" />
                        </td>
                        <td>${s.address}</td>
                        <td><a href="update?id=${s.ID}">Update</a>
                            &nbsp;  &nbsp;  &nbsp;
                            <a href="#" onclick="doDelete('${s.ID}')" >Delete</a>
                        </td>

                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </center>
    <script>
        function doDelete(id){
            if (confirm("May co muon xoa ID la "+id)){
                window.location="delete?id="+id;
            }
        }
    </script>
</body>
</html>
