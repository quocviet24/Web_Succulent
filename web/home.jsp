<%-- 
    Document   : home
    Created on : Mar 4, 2024, 2:51:53 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html>

    <head>
        <!-- Basic -->
        <meta charset="UTF-8">
        <meta http-equiv="Content-Language" content="vi" />
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Site Metas -->
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">

        <title>Succulent</title>

        <!-- bootstrap core css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

        <!-- fonts style -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,600,700&display=swap" rel="stylesheet" />

        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet" />
        <!-- responsive style -->
        <link href="css/responsive.css" rel="stylesheet" />
    </head>

    <body>
        <div class="hero_area">
            <!-- header section strats -->
            <div class="hero_bg_box">
                <div class="img-box">
                    <img src="images/header.jpg" alt="">
                </div>
            </div>

            <header class="header_section">
                <div class="header_top">
                    <div class="container-fluid">
                        <div class="contact_link-container">
                            <a href="" class="contact_link1">
                                <span>
                                    <c:if test="${sessionScope.account!=null }">
                                        Account: ${sessionScope.account.getUsername()}
                                    </c:if>
                                    <c:if test="${sessionScope.account ==null }">
                                        Account: Client ( None) 
                                    </c:if>
                                </span>
                            </a>
                            <a href="" class="contact_link2">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                                <span>
                                    Call : 0915580369
                                </span>
                            </a>
                            <a href="" class="contact_link3">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                                <span>
                                    quocviet242003@gmail.com
                                </span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="header_bottom">
                    <div class="container-fluid">
                        <nav class="navbar navbar-expand-lg custom_nav-container">
                            <a class="navbar-brand" href="home.html">
                                <span>
                                    <c:if test="${sessionScope.account!=null }">
                                        Welcome: ${sessionScope.account.getUsername()}
                                    </c:if>
                                </span>
                            </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class=""></span>
                            </button>

                            <div class="collapse navbar-collapse ml-auto" id="navbarSupportedContent">
                                <ul class="navbar-nav  ">
                                    <c:if test="${sessionScope.account.role == 1}">
                                        <li class="nav-item">
                                            <a class="nav-link" href="manageaccount">Manegement Account</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${sessionScope.account.role == 1}">
                                        <li class="nav-item">
                                            <a class="nav-link" href="add">Add Succulent</a>
                                        </li>
                                    </c:if>
                                    <li class="nav-item active">
                                        <a class="nav-link" href="home.html">Home <span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="succulent"> Shopping </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="album"> Album </a>
                                    </li>
                                    <c:if test="${sessionScope.account == null}">
                                        <li class="nav-item">
                                            <a class="nav-link" href="Login.jsp">Login</a>
                                        </li>
                                    </c:if>

                                    <c:if test="${sessionScope.account != null}">
                                        <li class="nav-item">
                                            <a class="nav-link" href="removes">Logout</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${sessionScope.account != null}">
                                        <li class="nav-item">
                                            <a class="nav-link" href="changePassword.jsp">Change Password</a>
                                        </li>
                                    </c:if>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </header>
            <!-- end header section -->
            <!-- slider section -->
            <section class=" slider_section ">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-7">
                                        <div class="detail-box">
                                            <h1>
                                                Việt Thảo Succulent <br>
                                                <span>
                                                    Our Responsibility
                                                </span>
                                            </h1>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- end slider section -->
        </div>

        <!-- about section -->

        <section class="about_section layout_padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 px-0">
                        <div class="img_container">
                            <div class="img-box">
                                <img src="images/about.jpg" alt="" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 px-0">
                        <div class="detail-box">
                            <div class="heading_container ">
                                <h2>
                                    About us:
                                </h2>
                            </div>
                            <p>
                                Chúng tôi là nhóm sinh viên năm 3 và cán bộ đại học FPT. Với đam mê và sở thích trồng cây đặc biệt là sen đá ....
                                tạm thế nhớ lười viết tiếp quá  
                            </p>
                            <div class="btn-box">
                                <a href="">
                                    Read More
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="contact_section layout_padding">
            <div class="contact_bg_box">
                <div class="img-box">
                    <img src="images/contact-bg.jpg" alt="">
                </div>
            </div>
            <div class="container">
                <div class="heading_container heading_center">
                    <h2>
                        Get In touch
                    </h2>
                    If you have any question or feedback, send it for me in here
                </div>
                <div class="">
                    <div class="row">
                        <div class="col-md-7 mx-auto">
                            <form action="#">
                                <div class="contact_form-container">
                                    <div>
                                        <div>
                                            <input type="text" placeholder="Full Name" />
                                        </div>
                                        <div>
                                            <input type="email" placeholder="Email " />
                                        </div>
                                        <div>
                                            <input type="text" placeholder="Phone Number" />
                                        </div>
                                        <div class="">
                                            <input type="text" placeholder="Message" class="message_input" />
                                        </div>
                                        <div class="btn-box ">
                                            <button type="submit">
                                                Send
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- end contact section -->

        <!-- team section -->

        <section class="team_section layout_padding">
            <div class="container">
                <div class="heading_container heading_center">
                    <h2>
                        Our Guards
                    </h2>
                    <p>
                        Lorem ipsum dolor sit amet, non odio tincidunt ut ante, lorem a euismod suspendisse vel, sed quam nulla mauris
                        iaculis. Erat eget vitae malesuada, tortor tincidunt porta lorem lectus.
                    </p>
                </div>
                <div class="row">
                    <div class="col-md-4 col-sm-6 mx-auto ">
                        <div class="box">
                            <div class="img-box">
                                <img src="images/thoi1.jpg" alt="">
                            </div>
                            <div class="detail-box">
                                <h5>
                                    Martin Anderson
                                </h5>
                                <h6 class="">
                                    supervisor
                                </h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 mx-auto ">
                        <div class="box">
                            <div class="img-box">
                                <img src="images/thao2.jpg" alt="">
                            </div>
                            <div class="detail-box">
                                <h5>
                                    Denny Butler
                                </h5>
                                <h6 class="">
                                    supervisor
                                </h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6 mx-auto ">
                        <div class="box">
                            <div class="img-box">
                                <img src="images/khanh3.jpg" alt="">
                            </div>
                            <div class="detail-box">
                                <h5>
                                    Nathan Mcpherson
                                </h5>
                                <h6 class="">
                                    supervisor
                                </h6>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="btn-box">
                    <a href="">
                        View All
                    </a>
                </div>
            </div>
        </section>

        <!-- end team section -->

        <jsp:include page="footer.html"></jsp:include>

        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/custom.js"></script>
    </body>

</html>
