<%-- 
    Document   : changePassword
    Created on : Mar 4, 2024, 9:15:22 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Change Password</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="css/styleLogin.css">

    </head>
    <body class="img js-fullheight" style="background-image: url(images/banner-bg.png);">
        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 text-center mb-5">
                        <h2 class="heading-section">Change the password</h2>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-4">
                        <div class="login-wrap p-0">
                            <h3 class="mb-4 text-center">Do you wanna change the password?</h3>
                            <h4 style="color: red">${requestScope.error}</h4>
                            <h4 style="color: red">${requestScope.error1}</h4>
                            <h4 style="color: greenyellow">${requestScope.done}</h4>

                            <form action="changepass" method="get" class="signin-form">
                                <!-- Enter new account -->
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Username" name="username" value="${sessionScope.account.getUsername()}" readonly>
                                </div>
                                <div class="form-group">
                                    <input id="password-field" type="password" class="form-control" placeholder="Old Password" name="password" value="${requestScope.a}" required>

                                </div>
                                <div class="form-group">
                                    <input id="password-field" type="password" class="form-control" placeholder="Ener new password" name="newPassword" value="${requestScope.b}" required>

                                </div>
                                <div class="form-group">
                                    <input id="password-field" type="password" class="form-control" placeholder="ReEnter new password" name="reNewPassword" value="${requestScope.c}" required>

                                </div>
                                <div class="form-group">
                                    <button type="submit" class="form-control btn btn-primary submit px-3">Change Password</button>
                                </div>
                            </form>
                                    <c:if test='${requestScope.confirm == 1}' >
                                <div class="form-group">
                                    <form action="changepass?newPassword=${requestScope.b}"method="post">
                                        <button type="submit" class="form-control btn btn-primary submit px-3">Confirm</button>
                                    </form>
                                </div>
                            </c:if>
                            <div class="social d-flex text-center">
                                <a href="home.jsp" style="color: black">Back to home page</a>
                            </div>

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
