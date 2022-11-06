<%-- 
    Document   : myshop.jsp
    Created on : Oct 15, 2022, 4:41:03 PM
    Author     : Admin
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fml" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Shop</title>
        <style>
            table{
                border-collapse: collapse;
            }
            #bag{
                text-align: right;
                margin-right:30px;
                margin-top:30px; 
            }
            .text_right{
                text-align: right;
            }
        </style>
    </head>
    <body>
        <p id="bag">
            <image src="images/th.jfif" width="50px" height="50px"/>
            <a href="show">My bag(${requestScope.size}) items</a>
        </p>
        <h1>List of Product</h1>
        <form name="f" action="" method="post">
            Enter number of items to buy:
            <input style="text-align: center" type="number" name="num" value="1"/>
            <hr/>
            <table border="1px" width="40%">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Action</th>
                </tr>
                <c:forEach items="${requestScope.data}" var="p">
                    <c:set var="id" value="${p.id}"/>
                    <tr>
                        <td>${id}</td>
                        <td>${p.name}</td>
                        <td class="text_right">${p.quantity}</td>
                        <td class="text_right"><fmt:formatNumber pattern="##.##" value="${p.price*1.67}"/></td>
                        <td><input type="button" onclick="buy('${id}')" value="Buy Product" /></td>
                    </tr>
                </c:forEach>
            </table>
        </form>
        <script>
            function buy(id){
                var m=document.f.num.value;
                document.f.action="buy?id="+id+"&num"+m;
                document.f.submit();
            }
        </script>
    </body>
</html>
