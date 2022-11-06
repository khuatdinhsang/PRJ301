<%-- 
    Document   : register
    Created on : Sep 16, 2022, 9:09:17 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Add  product</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>

        <div class="container">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h2 class="text-center">Add product</h2>
                </div>
                <div class="panel-body">
                    <!--action="dang-ky-tai-khoan"-->
                    <form method="post" action="add">
                        <div class="form-group">
                            <label for="name">Name:</label>
                            <input type="text" value="${index}" name="index" style="display:none"/>
                            <input required="true" value ="${product.getName()}"name="name" type="text" class="form-control" id="name">
                        </div>
                        <div class="form-group">
                            <label for="category">Category</label>
                            <input required="true" name="category"type="text" value ="${product.getCartegory()}"class="form-control" id="category">
                        </div>
                        <div class="form-group">
                            <label for="price">Price</label>
                            <input type="text" name="price"class="form-control" value="${product.getPrice()}" id="price">
                        </div>
                        <div class="form-group">
                            <label for="description">Description</label>
                            <input required="true" name="descriotion"type="text" value="${product.getDescription()}"class="form-control" id="description">
                        </div>
                        <button class="btn btn-success">ADD</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>