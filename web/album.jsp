<%-- 
    Document   : album
    Created on : Mar 4, 2024, 2:11:45 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>uiCookies:Resto &mdash; Free Bootstrap Theme, Free Restaurant Responsive Bootstrap Website Template</title>
        <meta name="description" content="Free Bootstrap Theme by uicookies.com">
        <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Pinyon+Script" rel="stylesheet">
        <link rel="stylesheet" href="css/styles-merged.css">
        <link rel="stylesheet" href="css/style.min.css">
        <link href="css/style.css" rel="stylesheet" />
        <link href="css/responsive.css" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,600,700&display=swap" rel="stylesheet" />
        <style>
            .header_section_top {
                width: 100%;
                float: left;
                background-color: #2b2a29;
                clip-path: polygon(0 0, 100% 0, 96% 100%, 3% 100%);
                height: auto;
                padding: 10px 0px;
            }

            .custom_menu {
                width: 100%;
                margin: 0 auto;
                text-align: center;
            }

            .custom_menu ul {
                margin: 0px;
                padding: 0px;
                display: inline-block;
            }

            .custom_menu li {
                float: left;
                font-size: 16px;
                color: #f1f1f1;
                padding: 6px 10px 0px 10px;
            }

            .custom_menu li a {
                color: #f1f1f1;
            }

            .custom_menu li a:hover {
                color: #f26522;
            }
            /* header top section end */
        </style>
    </head>
    <body>

        <!-- Fixed navbar -->
        <div class="container">
            <div class="header_section_top">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="custom_menu">
                            <ul>
                                <li><a href="home.jsp">Home</a></li>
                                <li><a href="succulent"> Shopping </a></li>
                                <li><a href="album">Album</a></li>
                                <li><a href="contact.html">Contact us</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end navbar -->
        <section class="flexslider" data-section="welcome">
            <ul class="slides">
                <li style="background-image: url(img/addSucculent.jpg)" class="overlay" data-stellar-background-ratio="0.5">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8 col-md-offset-2">
                                <div class="probootstrap-slider-text text-center probootstrap-animate probootstrap-heading">
                                    <h1 class="primary-heading">Welcome</h1>
                                    <h3 class="secondary-heading">The Album</h3>
                                    <p class="sub-heading">A free bootstrap website template by <a href="https://uicookies.com">uicookies.com</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </section>
        <br>

        <!-- probootstrap-bg-white -->
        <section class="probootstrap-section">
            <div class="container">
                <div class="row">
                    <div style="display:flex; flex-wrap: wrap; justify-content: space-around;">
                        <c:forEach items="${requestScope.list}" var="s" varStatus="loop">
                            <div class="probootstrap-cell probootstrap-animate" data-animate-effect="fadeIn" style="width: 50%; box-sizing: border-box;">
                                <div class="image" style="background-image: url(${s.img});"></div>
                                <div class="text text-center">
                                    <h3>${s.name}</h3>
                                    <p>${s.describe}</p>
                                    <div><a href="getinfo?id=${s.getIDsu()}">See More</a></div>
                                    <!<!-- kiểm tra xem có phải admin đăng nhập k thì thêm tính năng sửa và xóa succulent -->
                                    <c:if test="${sessionScope.account.role == 1}">
                                    <div><a href="edit?id=${s.getIDsu()}">Edit</a></div>
                                    <div><a href="deletealbum?id=${s.getIDsu()}">Delete</a></div>
                                    </c:if>
                                </div>
                            </div>
                            <%-- Add a line break after every 2 items --%>
                            <c:if test="${loop.index % 2 == 1}">
                                <div > <br></div>
                                </c:if>
                            </c:forEach>
                    </div>

                </div>
            </div>
        </section>

        <jsp:include page="footer.html"></jsp:include>

        <script src="js/scripts.min.js"></script>
        <script src="js/custom.min.js"></script>

    </body>
</html>
