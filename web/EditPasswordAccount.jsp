<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <title>Login 10</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="css/styleLogin.css">

    </head>
    <body class="img js-fullheight" style="background-image: url(images/addSucculent.jpg);">
        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 text-center mb-5">
                        <h2 class="heading-section">Welcome to my website</h2>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-4">
                        <div class="login-wrap p-0">
                            <c:if test="${sessionScope.account.role == 1}">
                            <h3 class="mb-4 text-center">Update the password</h3>
                            <form action="updateaccount" method="post" class="signin-form">
                                <!-- Enter account -->
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Username" name="username" value="${requestScope.user}" readonly="">
                                    </div>
                                    <div class="form-group">
                                        <input id="password-field" type="text" class="form-control" placeholder="Password" name="password" value="${requestScope.pass}" required>

                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="form-control btn btn-primary submit px-3">Change Password</button>
                                    </div>
                            </form>
                            <div class="social d-flex text-center" style="text-align: center; align-items: center">
                                <button onclick='window.history.go(-1);'>Back to previous page</button>
                                <a href="home.jsp" style="color: black">Back to home page</a>
                            </div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="js/jquery.min.js"></script>
        <script src="js/popper.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>

