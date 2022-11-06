<%-- 
    Document   : tinh
    Created on : Sep 13, 2022, 6:29:15 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
           
        </style>
    </head>
    <body>
        <div class="nen">
            <h1>A simple Calculator</h1>
            </hr><!-- comment -->
            <form>
                <table>
                    <tr>
                        <td class="label">Enter operand 1: </td><!-- comment -->
                        <td><input type="text" name="num1"/></td>
                    </tr>
                    <tr>
                        <td class="label">Enter operand 2: </td><!-- comment -->
                        <td><input type="text" name="num2"/></td>
                    </tr>
                    <tr>
                        <td class="label">Select operand : </td><!-- comment -->
                        <td>
                            <select name="op">
                                <option value="+">+</option>
                                <option value="-">-</option>
                                <option value="x">x</option>
                                <option value="/">/</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Calculator"/></td>
                    </tr>
                </table>
            </form>
            <h2>
                <jsp:useBean id="c" class="model.Math"/>
                <jsp:setProperty name="c" property="*"/>
                <jsp:getProperty name="c" property="num1"/>
                <jsp:getProperty name="c" property="op"/>
                <jsp:getProperty name="c" property="num2"/>
                &nbsp; =>
                <jsp:getProperty name="c" property="result"/>
                <jsp:getProperty name="c" property="KQ"/>
            </h2>
        </div>
    </body>
</html>
