<%-- 
    Document   : tinh.jsp
    Created on : Sep 13, 2022, 10:35:32 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function choice(change){
                document.getElementById("d").value=change;
                
                document.getElementById("f1").submit();
                
                
            }
        </script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form id="f1" action="tinh" method="post">
            nhap tien viet : <input type="text" name="money"/><br/><!-- comment -->
            <input type="hidden" id ="d"name="change" value=""/>
            <input type="button" onclick="choice('0')" value="doi sang do"/><br/>
            <input type="button" onclick="choice('1')" value="doi sang yen"/>
        </form>
        ${requestScope.kq}
    </body>
</html>
