<%-- 
    Document   : list.jsp
    Created on : Oct 4, 2022, 8:47:14 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table{
                border-collapse: collapse;
            }
            .content{
                margin:auto;
                width: 80%;
                float:left;
                margin-left:30px;
                height:auto;
            }
             .pagination {
                 display: inline-block;
              }
             .pagination a {
                color: black;
                font-size: 22px;
                float: left;
                padding: 8px 16px;
                text-decoration: none;
              }
            .pagination a.active {
                background-color: #4CAF50;
                color: white;
              }
            .pagination a:hover:not(.active) {
                background-color: chocolate;
            }
            
        </style>
    </head>
    <body>
        <div class="tab">
            <c:set var="cat" value="${requestScope.cats}"/>
            <c:set var="ci" value="${requestScope.cid}"/>
            <form action ="check">
                <c:forEach begin="0" end="${cat.size()-1}" var="i">
                    <input type="checkbox" name="id" value="${cat.get(i).getId()}"
                      ${ci[i]?"checked":""} onclick="this.form.submit()"/>
                    ${cat.get(i).getName()} <br/>
                    </c:forEach>
            </form>
        </div>
        <div class="content">
            <h1>List of product</h1>
            <c:set var="page" value="${requestScope.page}"/>
            <div class="pagination">
                <c:forEach begin="${1}" end="${requestScope.num}" var="i" >
                    <a class="${i==page ?"active":""}"href="list?page=${i}">${i}</a>
                </c:forEach>
            </div>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Image</th>
                    <th>Quantity</th>
                    <th>Release Date</th>
                    <th>Describe</th>
                    <th>Category name</th>
                </tr>
                <c:forEach items="${requestScope.data}" var="p" >
                    <tr>
                        <td>${p.id}</td>
                        <td>${p.name}</td>
                        <td>
                            <img src="${p.image}" width="80px" height="80px" />
                        </td>
                        <td>${p.quantity}</td>
                        <td>${p.releaseDate}</td>
                        <td>${p.describe}</td>
                        <td>${p.cate.name}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
