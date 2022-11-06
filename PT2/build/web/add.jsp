<%-- 
    Document   : add.jsp
    Created on : Oct 12, 2022, 8:30:16 PM
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
    <center>
        <h1>Add student</h1>
        <form action="add" method="get">
            <table>
                <tr>
                    <th>Enter ID :</th>
                    <th><input type="text" name="id"/></th>
                </tr>
                <tr>
                    <th>Enter Name :</th>
                    <th><input type="text" name="name"/></th>
                </tr>
                <tr>
                    <th>Enter Dob :</th>
                    <th><input type="date" name="dob"/></th>
                </tr>
                <tr>
                    <th>Enter Gender :</th>
                    <th>
                    <input type="radio" name="gender" value="1"/>Male
                    <input type="radio" name="gender" value="0"/>Female
                    </th>
                </tr>
                <tr>
                    <th>Enter Address :</th>
                    <th><input type="text" name="address"/></th>
                </tr>
            </table>
            <input type="submit" value="ADD"/>

        </form>
    </center>
</body>
</html>
