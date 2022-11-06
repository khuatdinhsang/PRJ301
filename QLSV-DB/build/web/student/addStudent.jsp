<%-- 
    Document   : register
    Created on : Sep 16, 2022, 9:09:17 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Add  Student</title>
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
                    <h2 class="text-center">Add Student</h2>
                </div>
                <div class="panel-body">
                    <!--action="dang-ky-tai-khoan"-->
                    <form method="post" action="add">
                        <div class="form-group">
                            <label for="name">Name:</label>
                            <input type="text" name="id" value="${std.id}" style="display: none"/>
                            <input required="true" name="name" type="text" value ="${std.name}"class="form-control" id="name"/>
                        </div>
                        <div class="form-group">
                            <label for="age">Age:</label>
                            <input required="true" name="age" type="number" value="${std.age}"class="form-control" id="age"/>
                        </div>
                        <div class="form-group">
                            <label for="address">Address:</label>
                            <input required="true" name="address" type="text" value="${std.address}"class="form-control" id="address"/>
                        </div>
                        <button class="btn btn-success">ADD</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>