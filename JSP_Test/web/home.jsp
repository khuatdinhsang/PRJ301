<%-- 
    Document   : home
    Created on : Sep 8, 2022, 9:50:05 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                <h1>Hello World!</h1>
                <h2 style="color:red">
        <%
            String name="sang";
            out.println("Hello  "+name);
            double r=2;
            DecimalFormat f= new DecimalFormat("##.##");
        %>   
   </h2>
   <h1 style="color:red">
       Dien tich la: <%= f.format(Math.PI*r*r) %>
   </h1>


        <h1>Bài 1</h1>
        <form>
            enter radius: <input type="text" name="r"/>
            <input type="submit" value="SUBMIT"/>
        </form>
        <%
          if (request.getParameter("r")!=null){
           String r_raw=request.getParameter("r");
           double r1;
           try{
                r1=Double.parseDouble(r_raw);
                double s=r1*r1*Math.PI;
         %>     
         <h2>Dien tich la: <%= f.format(s)%></h2>
         <%
            } catch(Exception e){
                 System.out.println(e);
            }
            }  
        %>
    </body>
</html>
