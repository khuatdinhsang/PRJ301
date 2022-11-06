<%-- 
    Document   : caculator
    Created on : Sep 13, 2022, 3:27:56 PM
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
        <form action ="tinh"  method="post">
            Number1: <input type="text" name="num1"/><br/>
            Number2: <input type="text" name="num2"/><br/>
            Oparator :
            +<input type="radio"onchange="this.form.submit()" value ="+" name="op"/>
            -<input type="radio"onchange="this.form.submit()" value ="-"name="op"/>
            *<input type="radio"onchange="this.form.submit()" value ="*" name="op"/>
            /<input type="radio" onchange="this.form.submit()"value ="/"name="op"/>
        </form>
        ${requestScope.data}
    </body>
</html>
