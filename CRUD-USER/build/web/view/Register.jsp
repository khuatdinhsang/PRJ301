<%-- 
    Document   : register
    Created on : Sep 16, 2022, 9:09:17 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Add  User</title>
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
                    <h2 class="text-center">Add User</h2>
                </div>
                <div class="panel-body">
                    <!--action="dang-ky-tai-khoan"-->
                    <form method="get" action="./user">
                        <input type="hidden" class="form-control" name="action" value="SaveOrUpdate"/>
                        <div class="form-group">
                            <label for="name">UserName:</label>
                            <input required="true" value =""name="name" type="text" class="form-control" id="username">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input required="true" name="password"type="password" value =""class="form-control" id="password">
                        </div>
                        <div class="form-group">
                            <label for="fullname">FullName</label>
                            <input type="text" name="fullname"class="form-control" value="" id="fullname">
                        </div>
                        <div class="form-group">
                            <label for="age">Age</label>
                            <input required="true" name="age"type="text" value=""class="form-control" id="age">
                        </div>
                        <div class="form-group">
                            <label for="birthday">Birthday</label>
                            <input required="true" name="birthday"type="date" value=""class="form-control" id="birthday">
                        </div>
                        <div class="form-group">
                            <label for="gender">Gender</label>
                            <div class="radio">
                                <label class="checkbox-inline">
                                    <input type="radio" name="gender" value="1">Male</label>
                                </label>
                                <label class="checkbox-inline">
                                    <input type="radio" name="gender" value="0">FeMale</label>
                                </label>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <button type="reset" class="btn btn-primary">Cancel</button>
                        <a href="./user?action=list" class="btn btn-primary">Display Users</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>