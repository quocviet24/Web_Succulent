<%-- 
    Document   : infoSucculentr
    Created on : Mar 7, 2024, 6:22:39 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

    <head>
        <!-- Basic -->
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <!-- Site Metas -->
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">

        <title>Guarder</title>

        <!-- bootstrap core css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

        <!-- fonts style -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,600,700&display=swap" rel="stylesheet" />

        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet" />
        <!-- responsive style -->
        <link href="css/responsive.css" rel="stylesheet" />
    </head>

    <body class="sub_page">
        <!-- about section -->
        <c:set value="${requestScope.infoSucculent}" var="a"/>
        <section class="about_section layout_padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 px-0">
                        <div class="img_container">
                            <div class="img-box">
                                <img src="${a.getImg()}" alt="" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 px-0">
                        <div class="detail-box">
                            <div class="heading_container ">
                                <h2>
                                    ${a.getName()}
                                </h2>
                            </div>
                            <h3>Mô tả về cây trồng</h3>
                            <p>
                                ${a.getDescribe()}
                            </p>
                            
                            <h3>Ý nghĩa</h3>
                            <p>
                                ${a.getMeaning()}
                            </p>
                            
                            <h3>Cách trồng</h3>
                            <p>
                                ${a.getGrow()}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- end about section -->

        <!-- info section -->
        <section class="info_section ">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="info_logo">
                            <a class="navbar-brand" href="home.html">
                                <span>
                                    Guarder
                                </span>
                            </a>
                            <p>
                                dolor sit amet, consectetur magna aliqua. Ut enim ad minim veniam, quisdotempor incididunt r
                            </p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="info_links">
                            <h5>
                                Useful Link
                            </h5>
                            <ul>
                                <li>
                                    <a href="">
                                        dolor sit amet, consectetur
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        magna aliqua. Ut enim ad
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        minim veniam,
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        quisdotempor incididunt r
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="info_info">
                            <h5>
                                Contact Us
                            </h5>
                        </div>
                        <div class="info_contact">
                            <a href="" class="">
                                <i class="fa fa-map-marker" aria-hidden="true"></i>
                                <span>
                                    Lorem ipsum dolor sit amet,
                                </span>
                            </a>
                            <a href="" class="">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                                <span>
                                    Call : +01 1234567890
                                </span>
                            </a>
                            <a href="" class="">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                                <span>
                                    demo@gmail.com
                                </span>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="info_form ">
                            <h5>
                                Newsletter
                            </h5>
                            <form action="#">
                                <input type="email" placeholder="Enter your email">
                                <button>
                                    Subscribe
                                </button>
                            </form>
                            <div class="social_box">
                                <a href="">
                                    <i class="fa fa-facebook" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-twitter" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-youtube" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-instagram" aria-hidden="true"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- end info_section -->




        <!-- footer section -->
        <footer class="container-fluid footer_section">
            <p>
                &copy; <span id="currentYear"></span> All Rights Reserved. Design by
                <a href="https://html.design/">Free Html Templates</a>
            </p>
        </footer>
        <!-- footer section -->

        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/custom.js"></script>
    </body>

</html>
