<%-- 
    Document   : add.jsp
    Created on : Oct 20, 2022, 12:13:38 PM
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
        <form method="post" action="add">
            ID: <input type="text" name="id"></br>
            Name: <input type="text" name="name"></br>
            DOB: <input type="date" name="dob"></br>
            Gender: <input type="radio" value="1" name="gender"> Male
            <input type="radio" name="gender" value="0"> Female</br>
            <input type="checkbox" value="1" name="degree"/>Skill 1 <input type="text" name="text_degre"/></br>
            <input type="checkbox"value="2" name="degree"/>Skill 2 <input type="text" name="text_degre"/></br>
            <input type="checkbox" value="3" name="degree"/>Skill 3 <input type="text" name="text_degre"/></br>
            <input type="checkbox"value="4" name="degree"/>Skill 4 <input type="text" name="text_degre"/></br>
            <input type="checkbox"value="5" name="degree"/>Skill 5 <input type="text" name="text_degre"/></br>
            <input type="submit" value="Save"/>
        </form>
    </body>
</html>
