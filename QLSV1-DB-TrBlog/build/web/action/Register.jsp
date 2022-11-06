<%-- 
    Document   : register
    Created on : Sep 16, 2022, 9:09:17 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer">
        <link rel="stylesheet" href="../css/app.css">
        <link rel="stylesheet" href="../css/register.css">
        <title>IVYmoda</title>
    </head>

    <br>
    <header>
        <div class="logo">
            <img src="../images/logo.png" alt="">
        </div>
        <div class="menu">
            <li>
                <a href="">NỮ</a>
                <ul class="sub-menu">
                    <li><a href="">Hàng mới về</a></li>
                    <li><a href="">Collection</a></li>
                    <li><a href="">Áo</a>
                        <ul>
                            <li><a href="">Áo sơ mi</a></li>
                            <li><a href="">Áo thun</a></li>
                            <li><a href="">Áo vest</a></li>
                            <li><a href="">Áo khoác</a></li>
                            <li><a href="">Áo len</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="">
                            Quần
                        </a>
                        <ul>
                            <li><a href="">Quần jean</a></li>
                            <li><a href="">Quần lửng</a></li>
                            <li><a href="">Quần dài</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href=""></a>
                    </li>
                    <li>
                        <a href=""></a>
                    </li>
                    <li>
                        <a href=""></a>
                    </li>
                    <li>
                        <a href=""></a>
                    </li>
                    <li>
                        <a href=""></a>
                    </li>
                    <li>
                        <a href=""></a>
                    </li>
                    <li>
                        <a href=""></a>
                    </li>
                    <li>
                        <a href=""></a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="">NAM</a>
            </li>
            <li>
                <a href="">TRẺ EM</a>
            </li>
            <li>
                <a class="red" href="">SALE</a>
            </li>
            <li>
                <a href="">KHẨU TRANG</a>
            </li>
            <li>
                <a href="">BST</a>
            </li>
            <li>
                <a href="">THÔNG TIN</a>
            </li>
        </div>
        <div class="others">
            <li><input placeholder="Search..." type="text"><i class="fa-solid fa-magnifying-glass"></i></li>
            <li>
                <a href="#" class="fa-solid fa-paw"></a>
            </li>
            <li>
                <a href="#" class="fa-solid fa-user"></a>
            </li>
            <li>
                <a href="#" class="fa-solid fa-cart-plus"></a>
            </li>
        </div>
    </header>


    <!-- Register -->
    <section class="register">
        <div class="container">
            <h2 style="text-align:center; font-size: 30px;margin-bottom: 30px;">Đăng ký</h2>
            <form action="/QLSV1-DB-TrBlog/add" method="post">
                <div class="row">
                    <div class="col-md-6">
                        <div class="info_customer">
                            <h3>Thông tin khách hàng</h3>
                            <div class="form_group">
                                <div class="form_input">
                                     
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
                                        <option value ="Nam">Nam</option>
                                        <option value ="Nữ ">Nữ</option>
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
                        <div class="password_customer" style="margin-top:-82px" >
                            <h3>Thông tin mật khẩu</h3>
                            <div class="form_input w100">
                                <label for="">Mật khẩu: <sup>*</sup></label>
                                <input type="text"  value="${std.password}" name="password" placeholder="Mật khẩu...">
                            </div>
                            <div class="form_input w100">
                                <label for="">Nhập lại mật khẩu: <sup>*</sup></label>
                                <input type="text" class="new_password" value="${std.password}" placeholder="Nhập lại mật khẩu...">
                            </div>
                            <div class="form_input w100">
                                <label for="">Mời nhập các kí tự trong hình vào ô sau <sup>*</sup></label>
                                <input type="text" class="qr_Code" placeholder="">
                            </div>
                            <img class="capcha" src="../images/captcha (1).png" alt="">

                            <div class="accept">
                                <input name="accept" type="checkbox"/> Đồng ý với các <span>điều khoản</span> của IVY<br/>
                                <input name="accept" type="checkbox"/> Đăng ký nhận bản tin
                            </div>
                            <div class="btn_register">
                                <input  type="submit"  value="Đăng ký"/>
                                <!--Đăng Ký-->
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>

<footer class="footer-top">
    <li>
        <a href="http://online.gov.vn/Home/WebDetails/36596?AspxAutoDetectCookieSupport=1">
            <img src="../images/img-congthuong.png" alt="">
        </a>
    </li>
    <li>
        <a href="#">Liên hệ</a>
    </li>
    <li>
        <a href="https://tuyendung.ivy.com.vn/">Tuyển dụng</a>
    </li>
    <li>
        <a href="#">Giới thiệu</a>
    </li>
    <li>
        <a href="https://www.facebook.com/thoitrangivymoda/"><i class="fa-brands fa-facebook"></i></a>
        <a href="https://www.youtube.com/user/thoitrangivymoda"><i class="fa-brands fa-youtube"></i></a>
        <a href="https://www.instagram.com/ivy_moda/"><i class="fa-brands fa-instagram"></i></a>
    </li>
</footer>
<div class="about">
    <p>Khuất Đình Sáng xin gửi lời chào đến người anh em</p>
    <p>Địa chỉ: Giếng Làng- Yên Lỗ- Cẩm Yên- Thạch Thất- Hà Nội</p>
    <p>SDT :<span>0981008250</span></p>
</div>
<footer class="footer-bottom">
    Made by Khuất Đình Sáng
</footer>
<script src="../js/register.js"></script>
</body>

</html>