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
    <body class="img js-fullheight" style="background-image: url(images/banner-bg.png);">
        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 text-center mb-5">
                        <h2 class="heading-section">Register the account</h2>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-4">
                        <div class="login-wrap p-0">
                            <h3 class="mb-4 text-center">You don't have an account?<br/> Register now</h3>
                            <h4 style="color: red">${requestScope.error}</h4>
                            <h4 style="color: red">${requestScope.error1}</h4>
                            <h4 style="color: greenyellow">${requestScope.done}</h4>

                            <form action="register" method="post" class="signin-form">
                                <!-- Enter new account -->
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Username" name="username" required>
                                </div>
                                <div class="form-group">
                                    <input id="password-field" type="password" class="form-control" placeholder="Password" name="password" required>

                                </div>
                                <div class="form-group">
                                    <input id="password-field" type="password" class="form-control" placeholder="Return Password" name="return_password" required>

                                </div>
                                <div class="form-group">
                                    <button type="submit" class="form-control btn btn-primary submit px-3">Register now</button>
                                </div>
                                <div class="social d-flex text-center">
                                    <a href="Login.jsp" style="color: black">Login now</a>
                                </div>
                            </form>
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

