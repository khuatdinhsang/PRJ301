<%-- 
    Document   : home.jsp
    Created on : Oct 11, 2022, 8:48:22 PM
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
        <h3>
            ]
            
            <c:if test ="${sessionScope.account==null}">
                <a href="login">Login</a>&nbsp;&nbsp;&nbsp;
                <a href="register.jsp">Register</a>
            </c:if>
            <c:if test="${sessionScope.account!=null}">
                <a href="#" onclick="show()">Profile</a>&nbsp;&nbsp;&nbsp;
                <a href="change.jsp">Change Password</a>&nbsp;&nbsp;&nbsp;
                <a href="logout">Logout</a>&nbsp;&nbsp;&nbsp;
                
            </c:if>
        </h3>
        <div id="profile" style="display:none">
            Username: ${sessionScope.account.username} </br>
            Role: ${sessionScope.account.role}
        </div>
        <script>
            function show(){
                var x=document.getElementById("profile");
                if (x.style.display=="none"){
                    x.style.display="block";
                } else{
                    x.style.display=="none"
                }
            }
        </script>
    </body>
</html>
