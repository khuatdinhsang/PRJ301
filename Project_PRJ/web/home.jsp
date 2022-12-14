<%-- 
    Document   : home.jsp
    Created on : Oct 18, 2022, 8:02:21 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IVY moda</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer">
        <link rel="stylesheet" href="./css/app.css">
        <link rel="stylesheet" href="./css//base.css">

    </head>
    <body>
        <header class="container">

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
                    <a href="./index.html" class="fa-solid fa-paw"></a>
                </li>
                <li>
                    <a href="../interface/login.html" class="fa-solid fa-user"></a>
                </li>
                <li>
                    <a href="./cart.html" class="fa-solid fa-cart-plus"></a>
                </li>
            </div>
        </header>

        <section id="slider">
            <div class="click_right click_slide">
                <i class="fa-solid fa-chevron-right "></i>
            </div>
            <div class="click_left click_slide">
                <i class="fa-solid fa-chevron-left"></i>
            </div>
            <div class="aspect-ratio-169">
                <img src="../images/slide1.jpg" alt="">
                <img src="../images/slide2.jpg" alt="">
                <img src="../images/slide3.jpg" alt="">
                <img src="../images/slide4.jpg" alt="">
            </div>
            <div class="dot-container">
                <div class="dot active " data-index="0"></div>
                <div class="dot" data-index="1"></div>
                <div class="dot" data-index="2"></div>
                <div class="dot" data-index="3"></div>
            </div>
        </section>
        <section class="top_seller">
            <div class="container-product">
                <div class="top_seller_title">
                    <h2>Best seller</h2>
                </div>
                <div class="top_seller_items">
                    <div class="item item_moda active_item">IVY moda</div>
                    <div class="item item_men">IVY men</div>
                    <div class="item item_kids">IVY kids</div>
                </div>
                <div class="top_seller_content">
                    <div class="click_right click_slide item_click_right" style="top:45%">
                        <i class="fa-solid fa-chevron-right "></i>
                    </div>
                    <div class="click_left click_slide item_click_left" style="top:45%">
                        <i class="fa-solid fa-chevron-left"></i>
                    </div>
                    <div class="seller_list_product">
                        <div class="item_product ">
                            <div class="sales">-50<sup>%</sup></div>
                            <img src="../images/anh2.jfif" alt="">
                            <div class="row">
                                <div class="color_product_seller">
                                    <div class="color color1"></div>
                                    <div class="color color2"></div>
                                    <div class="color color3"></div>
                                </div>
                                <div class="heart_product_seller">
                                    <i class="fa-solid fa-heart"></i>
                                </div>
                            </div>

                            <div class="price_product_seller">
                                <span class="new_price">745.000</span>
                                <span class="old_price">1.490.000</span>
                            </div>
                            <div class="cart_product">
                                <a href="#">
                                    <i class="fa-solid fa-cart-plus"></i>
                                </a>
                            </div>
                        </div>
                        <div class="item_product ">
                            <div class="sales">-50<sup>%</sup></div>
                            <img src="../images/anh3.jfif" alt="">
                            <div class="row">
                                <div class="color_product_seller">
                                    <div class="color color1"></div>
                                    <div class="color color2"></div>
                                    <div class="color color3"></div>
                                </div>
                                <div class="heart_product_seller">
                                    <i class="fa-solid fa-heart"></i>
                                </div>
                            </div>
                            <div class="price_product_seller">
                                <span class="new_price">745.000</span>
                                <span class="old_price">1.490.000</span>
                            </div>
                            <div class="cart_product">
                                <a href="#">
                                    <i class="fa-solid fa-cart-plus"></i>
                                </a>
                            </div>
                        </div>
                        <div class="item_product ">
                            <div class="sales">-50<sup>%</sup></div>
                            <img src="../images/anh4.jfif" alt="">
                            <div class="row">
                                <div class="color_product_seller">
                                    <div class="color color1"></div>
                                    <div class="color color2"></div>
                                    <div class="color color3"></div>
                                </div>
                                <div class="heart_product_seller">
                                    <i class="fa-solid fa-heart"></i>
                                </div>
                            </div>
                            <div class="price_product_seller">
                                <span class="new_price">745.000</span>
                                <span class="old_price">1.490.000</span>
                            </div>
                            <div class="cart_product">
                                <a href="#">
                                    <i class="fa-solid fa-cart-plus"></i>
                                </a>
                            </div>
                        </div>
                        <div class="item_product ">
                            <div class="sales">-50<sup>%</sup></div>
                            <img src="../images/anh15.jpg" alt="">
                            <div class="row">
                                <div class="color_product_seller">
                                    <div class="color color1"></div>
                                    <div class="color color2"></div>
                                    <div class="color color3"></div>
                                </div>
                                <div class="heart_product_seller">
                                    <i class="fa-solid fa-heart"></i>
                                </div>
                            </div>
                            <div class="price_product_seller">
                                <span class="new_price">745.000 </span>
                                <span class="old_price">1.490.000</span>
                            </div>
                            <div class="cart_product">
                                <a href="#">
                                    <i class="fa-solid fa-cart-plus"></i>
                                </a>
                            </div>
                        </div>
                        <div class="item_product ">
                            <div class="sales">-50<sup>%</sup></div>
                            <img src="../images/anh12.jfif" alt="">
                            <div class="row">
                                <div class="color_product_seller">
                                    <div class="color color1"></div>
                                    <div class="color color2"></div>
                                    <div class="color color3"></div>
                                </div>
                                <div class="heart_product_seller">
                                    <i class="fa-solid fa-heart"></i>
                                </div>
                            </div>
                            <div class="price_product_seller">
                                <span class="new_price">745.000</span>
                                <span class="old_price">1.490.000</span>
                            </div>
                            <div class="cart_product">
                                <a href="#">
                                    <i class="fa-solid fa-cart-plus"></i>
                                </a>
                            </div>
                        </div>
                        <div class="item_product ">
                            <div class="sales">-50<sup>%</sup></div>
                            <img src="../images/anh11.jpg" alt="">
                            <div class="row">
                                <div class="color_product_seller">
                                    <div class="color color1"></div>
                                    <div class="color color2"></div>
                                    <div class="color color3"></div>
                                </div>
                                <div class="heart_product_seller">
                                    <i class="fa-solid fa-heart"></i>
                                </div>
                            </div>
                            <div class="price_product_seller">
                                <span class="new_price">745.000</span>
                                <span class="old_price">1.490.000</span>
                            </div>
                            <div class="cart_product">
                                <a href="#">
                                    <i class="fa-solid fa-cart-plus"></i>
                                </a>
                            </div>
                        </div>
                        <div class="item_product ">
                            <div class="sales">-50<sup>%</sup></div>
                            <img src="../images/anh5.jfif" alt="">
                            <div class="row">
                                <div class="color_product_seller">
                                    <div class="color color1"></div>
                                    <div class="color color2"></div>
                                    <div class="color color3"></div>
                                </div>
                                <div class="heart_product_seller">
                                    <i class="fa-solid fa-heart"></i>
                                </div>
                            </div>
                            <div class="price_product_seller">
                                <span class="new_price">745.000</span>
                                <span class="old_price">1.490.000</span>
                            </div>
                            <div class="cart_product">
                                <a href="#">
                                    <i class="fa-solid fa-cart-plus"></i>
                                </a>
                            </div>
                        </div>
                        <div class="item_product ">
                            <div class="sales">-50<sup>%</sup></div>
                            <img src="../images/anh7.jpg" alt="">
                            <div class="row">
                                <div class="color_product_seller">
                                    <div class="color color1"></div>
                                    <div class="color color2"></div>
                                    <div class="color color3"></div>
                                </div>
                                <div class="heart_product_seller">
                                    <i class="fa-solid fa-heart"></i>
                                </div>
                            </div>
                            <div class="price_product_seller">
                                <span class="new_price">745.000</span>
                                <span class="old_price">1.490.000</span>
                            </div>
                            <div class="cart_product">
                                <a href="#">
                                    <i class="fa-solid fa-cart-plus"></i>
                                </a>
                            </div>
                        </div>
                        <div class="item_product last_item">
                            <div class="sales">-50<sup>%</sup></div>
                            <img src="../images/anh13.jpg" alt="">
                            <div class="row">
                                <div class="color_product_seller">
                                    <div class="color color1"></div>
                                    <div class="color color2"></div>
                                    <div class="color color3"></div>
                                </div>
                                <div class="heart_product_seller">
                                    <i class="fa-solid fa-heart"></i>
                                </div>
                            </div>
                            <div class="price_product_seller">
                                <span class="new_price">745.000</span>
                                <span class="old_price">1.490.000</span>
                            </div>
                            <div class="cart_product">
                                <a href="#">
                                    <i class="fa-solid fa-cart-plus"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="watch_all">
            <a href="#"> Xem tất cả</a></div>

        <div class="big_img-sale">
            <img src="../images/bid_img-sales.jpg" alt="">
        </div>
        <section class="gallery">
            <div class="gallery_title">
                <h3>Gallery</h3>
            </div>
            <div class="gallery_list_items">
                <a href="#"><img src="../images/g1.jpg" alt=""></a>
                <a href="#"><img src="../images/g2.jpg" alt=""></a>
                <a href="#"><img src="../images/g3.jpg" alt=""></a>
                <a href="#"><img src="../images/g4.jpg" alt=""></a>
                <a href="#"><img src="../images/g5.jpg" alt=""></a>
            </div>
        </section>

        <section class="app-container">
            <p>Tải ứng dụng IVYmoda</p>
            <div class="app-google">
                <a href=""><img src="../images/appstore.png" alt=""></a>
                <a href=""><img src="../images/googleplay.png" alt=""></a>
            </div>
            <p>Nhận bản tin IVY moda</p>
            <input type="text" placeholder="Nhập email của bạn...">

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
        <script src="../js/home.js"></script>
    </body>
</html>
