<%-- 
    Document   : list
    Created on : Sep 29, 2022, 8:45:25 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        #wrapper{
            margin-left:10%;
            margin-right:10%;
        }
        h3{
            text-align: left;
            color:blue;
        }
        ul{
            list-style-type: none;

        }
        li{
            width:25%;
            text-align: center;
            float:left;
            margin:25px;
            border:2px solid red;
            border-radius: 10px;
        }
        li img{
            width:90%;

        }
        li a{
            text-decoration: none;

        }
        li:hover{
            background-color: bisque;
        }
        p{
            margin:5px;
            color:blue;
            font-size:12px;

        }
        .old{
            text-decoration: line-through;
            color:red;
        }
        input[type=submit]{
            width:200px;
            height:30px;
            background-color:#ff3333;
            border-radius:10px;
        }
    </style>

    <body>
        <div id="wrapper">
            <form  id="f1"action="list">
                <c:set var="cid" value="${requestScope.cid}"/>
                Dong dien thoai:
                <select name="key" >
                    <option value="0">All</option>
                    <c:forEach items="${requestScope.categories}" var="c">
                        <option ${(cid==c.id)?'selected':''}  value="${c.id}">${c.name}</option>
                    </c:forEach>
                </select>
                <input type="text" name="key2" value="${requestScope.key}" placeholder="Nhap ten,mieu ta, category"/>
                <br/>
                Từ giá:<input type="number" value="${requestScope.price1}" name="fromprice"/>
                Đến giá:<input type="number"  value="${requestScope.price2}" name="toprice"/>
                <br/>
                Từ ngày:<input type="date" value="${requestScope.from}" name="fromdate"/>
                Đến ngày:<input type="date"value="${requestScope.to}"  name="todate"/>
                <input type="submit" value ="SEARCH"/>
            </form>
            <br/>
            <h3>All phone</h3>
            <ul>
                <c:forEach items="${requestScope.products}" var="p">
                    <li>
                        <a href="#">
                            <img src="${p.image}"/>
                            <p>${p.name}</p>
                            <p>Gia goc: <span class="old">${(p.price*1.5)}VND</span></p>
                            <p>Gia ban:${p.price}VND</p>
                        </a>
                    </li>
                </c:forEach>

            </ul>

        </div>
        <script type="text/javascript">
            function change() {
                document.getElementById("f1").submit();

            }
        </script>
    </body>
</html>
