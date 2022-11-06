<%-- 
    Document   : list.jsp
    Created on : Sep 28, 2022, 8:55:31 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="./images/ss1.jpg" type="image/x-icon"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Product</title>
        <style>
            .red{
                color:blue;
                font-size:30px;
            }
        </style>
    </head>
    <body>
        <div id="wrapper">
            <div id="menu_tab">
                <ul class="menu">
                    <li><a href="products?cid=${0}">All</a></li>
                        <c:forEach items="${requestScope.data}" var="c">
                        <li><a <c:if test ="${requestScope.cid eq c.id}">
                                    class="red"
                        </c:if>
                                href="products?cid=${c.id}">${c.name}</a></li>
                        </c:forEach>

                </ul>
            </div>
            <div class="clr">

            </div>
            <div id="content">
                <c:set var="list" value="${requestScope.products}"/>
                <c:if test="${((list==null) ||(list.size()==0))}">
                    <h3>No product</h3>
                </c:if>
                <c:if test="${((list!=null) &&(list.size()>0))}">
                    <table border="1px">
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Image</th>
                            <th>Category name</th>
                        </tr>
                        <c:forEach items="${list}" var="p">
                            <tr>
                                <td>
                                    ${p.id}
                                </td>
                                <td>
                                    ${p.name}
                                </td>
                                <td>
                                    ${p.price}
                                </td>
                                <td>
                                    <img src="${p.image}" width="80px" height="80px" />
                                </td>
                                <td>
                                    ${p.category.name}
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </c:if>
            </div>
        </div>
        <iframe style="width:100px; height:100px" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14890.61303026122!2d105.52988217688696!3d21.0865067754722!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313458fcf8a9b33b%3A0xc7be1c2040c09983!2zQ-G6qW0gWcOqbiwgVGjhuqFjaCBUaOG6pXQsIEhhbm9pLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1664526025866!5m2!1sen!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </body>
</html>
