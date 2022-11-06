<%-- 
    Document   : addUser.jsp
    Created on : Sep 11, 2022, 8:53:43 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>them nguoi dung moi!</h1>
        
        <form action="viewUser.jsp" method="post">
            <input name="name" type="text" placeholder="ten nguoi dung"/>
            <input name="password" type="password" placeholder="nhap mat khau"/>
            <input name="phone" type="text" placeholder="dien thoai"/>
            <textarea rows="3" cols="3" name="about" placeholder="gioi thieu"></textarea>
            <input name="favourites1" type="checkbox"value='Xem Phim'>Xem Phim
            <input name="favourites2" type="checkbox" value='Nghe Nhac'>Nghe nhac
            <input name="favourites3" type="checkbox" value='Doc Sach'>Doc Sach
            <input type="submit" value="Them"/>
        </form>
    </body>
</html>
