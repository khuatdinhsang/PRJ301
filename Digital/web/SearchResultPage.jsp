<%-- 
    Document   : SearchResultPage
    Created on : Aug 31, 2022, 4:58:58 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result Search</title>
        <link rel="stylesheet" href="css/style.css"/>
    </head>
    <body>
        <div class="container">
            <jsp:include page="Header.jsp"/>
            <div class="content">
                <div class="main">
                    <c:forEach items="${listS}" var ="o">
                        <div class="listDigital">
                            <div class="title">
                                <a href="Detail.jsp">
                                    ${o.title}
                                </a>
                            </div>
                            <div class="image_seach">
                                <img src="images/${o.image}" alt=""/>
                            </div>
                            <div class="text_search">
                                ${o.shortDes}
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div class="paging">
                        <c:forEach begin="1" end ="${endPage}" var ="i">
                            <a href="SearchControl?index=${i}&txtSearch=${txtSearch}" >${i}</a>
                        </c:forEach>
                    </div>
            </div>
            <jsp:include page="Footer.jsp"/>
        </div>
    </body>
</html>
