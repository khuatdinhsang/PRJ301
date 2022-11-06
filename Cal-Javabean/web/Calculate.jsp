<%-- 
    Document   : Calculate
    Created on : Sep 20, 2022, 2:07:12 PM
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
        <h1>Calculator</h1>
        <form method="post" action="">
            Number1: <input type="text" name="num1" />
            Number1: <input type="text" name="num2" />
            Select Operation<select name="action">
                <option value="+">+</option>
                <option value="-">-</option>
                <option value="*">*</option>
                <option value="/">/</option>
            </select>
            <input type="submit" value="Calculate"/>
        </form>
        <jsp:useBean id="b" class="entity.Cal"/>
        <jsp:setProperty name="b" property="*"/>
        <jsp:getProperty name="b" property="result"/>
<!--        <h2>
            ${b.result}
        </h2>-->
    </body>
</html>
