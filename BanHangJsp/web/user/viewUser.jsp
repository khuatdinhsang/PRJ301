<%-- 
    Document   : viewUser
    Created on : Sep 11, 2022, 8:54:29 PM
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
        <h1>Hello World!</h1>
        <%
          String name=  request.getParameter("name");
          String password=  request.getParameter("password");
          String phone=  request.getParameter("phone");
          String about=  request.getParameter("about");
          String fav1= request.getParameter("favourites1");
          String fav2= request.getParameter("favourites2");
          String fav3= request.getParameter("favourites3");
          String fav="";
          if (fav1!=null){
          fav+=fav1+" ";
            }
          if (fav1!=null){
          fav+=fav2+" ";
            }
          if (fav1!=null){
          fav+=fav3;
            }
            %>
            
            <table>
                <tr>
                    <td>Ten</td>
                    <td>Password</td>
                    <td>Phone</td>
                    <td>About</td>
                    <td>Favourites</td>
                </tr>
                <tr>
                    <th><%=name %></th>
                    <th><%=password %></th>
                    <th><%=phone %></th>
                    <th><%=about %></th>
                    <th><%=fav%></th>
                </tr>
            </table>
    </body>
</html>
