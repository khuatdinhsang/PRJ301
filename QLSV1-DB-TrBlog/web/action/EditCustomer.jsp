<%-- 
    Document   : EditCustomer.jsp
    Created on : Sep 28, 2022, 9:10:52 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer">
        <link rel="stylesheet" href="../css/app.css">
        <link rel="stylesheet" href="../css/register.css">
        <title>JSP Page</title>
    </head>
    <body>
        <section class="register">
            <div class="container">
                <center>
                    <form action="/QLSV1-DB-TrBlog/add?id=${std.id}" method="post">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="info_customer">
                                    <h3>Thông tin khách hàng</h3>
                                    <div class="form_group">
                                        <div class="form_input">
                                            <input type="text" name="id" value="${id}" style="display: none"/>
                                            <label for="">Họ: <sup>*</sup></label>
                                            <input type="text" name="firstname"class="fisrt_name"value="${std.firstName}" placeholder="Họ...">
                                        </div>
                                        <div class="form_input">
                                            <label for="">Tên: <sup>*</sup></label>
                                            <input type="text" name="lastname"class="last_name"value="${std.lastName}" placeholder="Tên...">
                                        </div>
                                    </div>
                                    <div class="form_group">
                                        <div class="form_input">
                                            <label for="">Email: <sup>*</sup></label>
                                            <input type="email" name= "email"class="email" value="${std.email}" placeholder="Email...">
                                        </div>
                                        <div class="form_input">
                                            <label for="">SĐT: <sup>*</sup></label>
                                            <input type="text" name="phone" class="phone" value="${std.phone}" placeholder="SĐT...">
                                        </div>
                                    </div>
                                    <div class="form_group">
                                        <div class="form_input">
                                            <label for="">Ngày sinh: <sup>*</sup></label>
                                            <input type="date" name ="dob"class="birth"  value ="${std.dob}"placeholder="Ngày sinh...">
                                        </div>
                                        <div class="form_input">
                                            <label for="">Giới tính: <sup>*</sup></label>
                                            <select id="" name="gender"  value ="${std.gender}"class="gender">
                                                <option value ="${std.gender}">Nam</option>
                                                <option value ="${std.gender}">Nữ</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form_group">
                                        <div class="form_input">
                                            <label for="">Tỉnh/TP: <sup>*</sup></label>
                                            <input type="text" name="province" class="city" value="${std.province}" placeholder=" Tỉnh/TP...">
                                        </div>
                                        <div class="form_input">
                                            <label for="">Quận/Huyện:<sup>*</sup></label>
                                            <input type="text" class="street" name="district" value="${std.district}" placeholder=" Quận/Huyện...">
                                        </div>
                                    </div>
                                    <div class="form_input_100 form_input">
                                        <label for="">Phường/Xã:<sup>*</sup></label>
                                        <input type="text" class="village"  name="village" value="${std.village}" placeholder=" Quận/Huyện...">
                                    </div>
                                    <div class="form_input_100 form_input">
                                        <label for="">Địa chỉ:<sup>*</sup></label>
                                        <input type="text"  class="local"  value ="${std.address}"name="address"></input>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="password_customer">
                                    <h3>Thông tin mật khẩu</h3>
                                    <div class="form_input w100">
                                        <label for="">Mật khẩu: <sup>*</sup></label>
                                        <input type="text"  value="${std.password}" name="password" placeholder="Mật khẩu...">
                                    </div>
                                    <div class="form_input w100">
                                        <label for="">Nhập lại mật khẩu: <sup>*</sup></label>
                                        <input type="text" class="new_password" value="${std.password}" placeholder="Nhập lại mật khẩu...">
                                    </div>
                                    <div class="btn_register">
                                        <input  type="submit"  value="SAVE"/>
                                        <!--Đăng Ký-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </center>
            </div>
        </div>
    </section>
</body>
</html>
