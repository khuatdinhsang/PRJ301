

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:useBean id="t" class="dao.DigitalDAO" scope="request"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Digital_Alias</title>
        <link rel="stylesheet" type ="text/css" href="css/style.css"/>
    </head>
    <body>
        <div class="container">
            <div class="preheader">

            </div>
            <div class="header">
                <h3>My digital news</h3>
            </div>
            <div class="menu">
                <a href="HomePage.jsp">News</a>
            </div>
            <div class="main">
                <div class="left">
                    <div class="title">
                        ${t.top1.title}
                    </div>
                    <div class="image" >
                        <img src="images/${t.top1.image}" alt=""/>
                    </div>
                    <div class="description">
                        ${t.top1.description}
                    </div>
                    <div class="infomation">
                        By ${t.top1.author} | ${t.top1.timePost}
                    </div>
                    <div class="paging">
                        <c:forEach begin="1" end ="${endPage}" var ="i">
                            <a href="SearchControl?index=${i}&txtSearch=${txtSearch}" >${i}</a>
                        </c:forEach>

                    </div>
                </div>
                <div class="right">
                    <div class="newR">
                        Digital News
                    </div>
                    <div class="shortDes">
                        ${t.top1.shortDes}
                    </div>
                    <div class="newR">
                        Search  
                    </div>
                    <form action="SearchControl?index=1" method="post">
                        <div class="Search">
                            <input class="inputTxt" type="text" name="txtSearch">
                            <input class="SubmitTxt" type="submit" value="Go">
                        </div>
                    </form>
                    <div class="newR">
                        Last Articles
                    </div>
                    <c:forEach items="${t.top5}" var="s">
                        <div class="lastArticles">
                            <a href="Details.jsp">${s.title}</a>
                        </div>
                    </c:forEach>
                </div>

            </div>
            <div class="footer">
            </div>
        </div>
    </body>
</html>
