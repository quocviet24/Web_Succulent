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
        <link href="css/style.css" rel="stylesheet" />
        <link href="css/responsive.css" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,600,700&display=swap" rel="stylesheet" />

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
            <!-- header top section start -->
            <div class="header_bottom">
                <div class="container-fluid">
                    <nav class="navbar navbar-expand-lg custom_nav-container">
                        <a class="navbar-brand" href="home.jsp">
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
                                <li class="nav-item">
                                    <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link" href="succulent"> Shopping </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="album"> Album </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="contact.html">Contact us</a>
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
            <!-- header top section start -->
            <br>
            <!-- header section start -->
            <div class="header_section">
                <div class="container">
                    <div class="containt_main">

                        <!<!-- list categorys -->
                        <div class="dropdown">
                            <select class="btn btn-secondary dropdown-toggle" type="button" id="choises" data-toggle="dropdown" aria-haspopup="true" onchange="redirectToSubject(this)" name="All_Category">
                                <c:forEach items="${requestScope.listCategory}" var="l">
                                    <option value="${l.idc}">${l.name}</option> 
                                </c:forEach>
                            </select>
                        </div>

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
            <div class="banner_section layout_padding">
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
        <c:if test="${sessionScope.account != null}">
            <c:set value="${requestScope.suBuyNow}" var="a"/>
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
                                    <br>
                                </div>
                                <form action="buy" >
                                    <h3>Số lượng: <input style="text-align: center" type="text" name="number" id="inputNumber" value="1" oninput="updateTotal()"/></h3>
                                    <br>
                                    <input type="hidden" name="id" value="${a.getIDsu()}"/>
                                    <input type="hidden" name="price" value="${a.getPrice()}"/>
                                    <h3>Giá: ${a.getPrice()}</h3>
                                    <br>
                                    <h3>Tổng tiền: <span id="totalPrice">${a.getPrice()}</span></h3>
                                    <br>
                                    <div style="text-align: center;"><input type="submit" value="BUY NOW"/></div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </c:if>
        
        <c:if test="${sessionScope.account == null}">
            <h1 style="text-align:  center">YOU HAVE TO LOGIN TO BUY PRODUCT</h1>
            <h1 style="text-align:  center; color: red">  <a class="nav-link" href="Login.jsp">Login here</a></h1>
        </c:if>

        <jsp:include page="footer.html"></jsp:include>
            <!-- Javascript files-->
            <script src="js/jquery.min.js"></script>
            <script src="js/popper.min.js"></script>
            <script src="js/bootstrap.bundle.min.js"></script>
            <script src="js/jquery-3.0.0.min.js"></script>
            <script src="js/plugin.js"></script>
            <!-- sidebar -->
            <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
            <script src="js/custom.js"></script>
            <script>
                                function openNav() {
                                    document.getElementById("mySidenav").style.width = "250px";
                                }

                                function closeNav() {
                                    document.getElementById("mySidenav").style.width = "0";
                                }
                                function updateTotal() {
                                    // Lấy giá trị của số lượng từ trường nhập liệu
                                    var inputNumber = document.getElementById("inputNumber").value;

                                    // Lấy giá của sản phẩm
                                    var price = ${a.getPrice()};

                                    // Tính tổng tiền
                                    var totalPrice = price * inputNumber;

                                    // Cập nhật tổng tiền trên giao diện
                                    document.getElementById("totalPrice").innerHTML = totalPrice;
                                }
        </script>
    </body>
</html>
