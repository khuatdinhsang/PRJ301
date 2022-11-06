<%-- 
    Document   : customer
    Created on : Sep 22, 2022, 1:17:04 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.util.ArrayList" %>
<%@page import= "model.Student" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="customer">
            <table>
                <tr>
                    <td>Fullname:</td>
                    <td><input type="text" name="name"/> </td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <input type="radio" value="true"name="gender"/> Male
                        <input type="radio" value="false"name="gender"/> Female
                    </td>
                </tr>
                <tr>
                    <td> Favourite color :</td>
                    <td>
                        <input type="checkbox" name="color" value="Red"/> Red
                        <input type="checkbox" name="color" value="Yellow"/> Yellow
                        <input type="checkbox" name="color" value="Chocolate"/> Chocolate
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" value="SUBMIT"/></td>
                </tr>
            </table>
        </form>

        <table border="1px">
            <tr>
                <td>FullName</td>
                <td>Gender</td>
                <td>Favouite color</td>
            </tr>
            
            <%
         ArrayList<Student> list=null;
        if (session.getAttribute("data")!=null){
            list= (ArrayList<Student>)session.getAttribute("data");
        }else {
            list= new ArrayList<>();
        }
        for(Student i:list){
        %>
            <tr>
                <td><%=i.getName()%></td>
                <td>
                    <img <%=(i.isGender()?"src='images/male.jpg'":"src='images/female.jpg'")%>s width="30px" height="30px"/>
                </td>
                <td><%=i.getColor()%></td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
