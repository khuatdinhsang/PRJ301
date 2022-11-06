<%-- 
    Document   : list.jsp
    Created on : Sep 27, 2022, 9:02:18 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:useBean id="t" class="dao.CustomerDAO" scope="request"></jsp:useBean>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        </head>
        <body>
        <center>
            <table border='1px'>
                <thead>
                    <tr>
                        <th>STT</th>
                        <th>Họ</th>
                        <th>Tên</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Điện Thoại</th>
                        <th>Ngày sinh</th>
                        <th>Giới tính</th>
                        <th>Tỉnh</th>
                        <th>Huyện</th>
                        <th>Xã</th>
                        <th>Address</th>
                        <th>Action</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${t.listCustomer}" var="s">
                    <tr>
                        <td>${s.id}</td>
                        <td>${s.firstName}</td>
                        <td>${s.lastName}</td>
                        <td>${s.email}</td>
                        <td>${s.password}</td>
                        <td>${s.phone}</td>
                        <td>${s.dob}</td>
                        <td>${s.gender}</td>
                        <td>${s.province}</td>
                        <td>${s.district}</td>
                        <td>${s.village}</td>
                        <td>${s.address}</td>
                        <td>
                            <form method="post" action="/QLSV1-DB-TrBlog/delete?id=${s.id}">
                                <input type="text" value="${s.id}" name="id" style="display:none"/>
                                <button class="btn btn-warning">Delete</button>
                            </form>
                        </td>
                        <td>
                            <a href="/QLSV1-DB-TrBlog/add?id=${s.id}">
                                <button class="btn btn-danger">Edit</button>
                            </a>
                        </td>


                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href ="/QLSV1-DB-TrBlog/action/Register.jsp">Add customer</a>
    </center>
</body>
</html>
