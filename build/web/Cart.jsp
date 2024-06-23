<%-- 
    Document   : sell
    Created on : Mar 3, 2024, 8:25:10 PM
    Author     : admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <!-- basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>VT Succulent</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- bootstrap css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" type="text/css" href="css/styleSell.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <!-- fonts -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
        <!-- font awesome -->
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <!--  -->
        <!-- owl stylesheets -->
        <link href="https://fonts.googleapis.com/css?family=Great+Vibes|Poppins:400,700&display=swap&subset=latin-ext" rel="stylesheet">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesoeet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">



        <script>
            function redirectToSubject(select) {
                var subjectID = select.value;
                if (subjectID !== "0") {
                    window.location.href = "categorysearch?id=" + subjectID;
                }
            }
        </script>
    </head>
    <body>
        <!-- banner bg main start -->
        <div class="banner_bg_main">
            <br>
            <!-- header section start -->
            <div class="header_section">
                <div class="container">
                    <div class="containt_main">

                        <div class="main">
                            <form action='searchsell' method='post'>
                                <!-- Another variation with a button -->
                                <div class="input-group">

                                    <input type="text" class="form-control" placeholder="Search this blog" name="name">
                                    <div class="input-group-append">
                                        <button class="btn btn-secondary" type="submit" style="background-color: #f26522; border-color:#f26522 ">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </div>

                                </div>
                        </div></form>
                        <div class="header_box">

                            <div class="login_menu">
                                <ul>
                                    <li><a href="#">
                                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                            <span class="padding_10">Cart</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- header section end -->
            <!-- banner section start -->
            <div >
                <div class="container">
                    <div id="my_slider" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <h1 class="banner_taital">Get Start <br>Your favriot shoping</h1>
                                        <br>
                                        <br>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- banner section end -->
        </div>
        <!-- banner bg main end -->
        <a class="nav-link" href="succulent"> Shopping </a>
        <c:set var="total" value="0"/>
        <c:forEach items="${requestScope.list}" var="b" >
            <c:set var="total" value="${total + b.getPrice()*b.quantity}" />
            <div class="container">
                <div class="row" style="">
                    <div><<img src="${b.getImg()}" alt="alt"/></div>
                    <div class="col-md-6 px-0">
                        <div class="detail-box">
                            <form action="buy" >
                                <h3>Tên sản phẩm: ${b.getName()}</h3>
                                <h3>Số lượng:<button><a href="process?num=${b.getQuantity()}&id=${b.getIDSu()}&user=${b.username}">-</button> ${b.quantity} <button><a href="process?num=${b.getQuantity()}&id=${b.getIDSu()}&user=${b.username}">+</button>
                                   
                                        <br>
                                        <h3>Giá: ${b.getPrice()}</h3>
                                        <br>
                                        <h3>Tổng tiền: <span id="totalPrice">${b.getPrice()*b.quantity}</span></h3>
                                        <br>
                                        <div style="text-align: center;"><input type="submit" value="BUY NOW"/></div>
                                        <div style="text-align: center;"><a href="deleteproductcart?idsu=${b.getIDSu()}&name=${b.getUsername()}">DELETE PRODUCT</a></div>
                                        <hr>
                                        <hr>
                                        <hr>
                                        </form>
                                        </div>
                                        </div>
                                        </div>
                                        </div>
                                        <hr>
                                        <hr><!-- -->
                                    </c:forEach>
                                    <h1 style="text-align: end">TOTAL : ${total} ----- <a  href="buyall" >BUY ALL</a> </h1>                                <!-- Javascript files-->
                                    <script src="js/jquery.min.js"></script>
                                    <script src="js/popper.min.js"></script>
                                    <script src="js/bootstrap.bundle.min.js"></script>
                                    <script src="js/jquery-3.0.0.min.js"></script>
                                    <script src="js/plugin.js"></script>
                                    <!-- sidebar -->
                                    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
                                    <script src="js/custom.js"></script>

                                    </body>
                                    </html>
