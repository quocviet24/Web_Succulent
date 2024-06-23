<%-- 
    Document   : MyExam
    Created on : Mar 1, 2024, 3:44:23 PM
    Author     : admin
--%>

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
        <c:if test="${sessionScope.account.role == 1}">
        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 text-center mb-5">
                        <h1 >Add more succulent</h1>
                    </div>
                </div>
                <div >
                    <div >
                        <div >
                            <h3 class="mb-4 text-center">Enter the information about succulent  </h3>
                            <p> Nếu bạn muốn thêm số lượng hãy nhập tên mặt hàng đã có, giá đúng của nó và số lượng bạn muốn thêm 
                            <form action="add" method="post" class="signin-form">
                                <!-- Enter new account -->
                                <div class="form-group" style="display: flex; justify-content: space-evenly">
                                    <input type="text" class="form-control" placeholder="Name Succulent" name="name" required>
                                    <input type="text" class="form-control" placeholder="Price" name="price" required>
                                </div>
                                <div class="form-group" style="display: flex;">
                                    <br><input id="password-field" type="text" class="form-control" placeholder="Quantity" name="quantity" required>
                                    <br>
                                    <input id="password-field" type="text" class="form-control" placeholder="Link Img" name="img" required>

                                </div>

                                <input id="password-field" type="text" class="form-control" placeholder="Describe about succulent" name="describe" required>
                                <br>
                                <div class="form-group"style="display: flex;">
                                    <div style="color: white">Category: </div> 
                                    <select class="btn btn-secondary dropdown-toggle" type="button" id="choises" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" name="category">
                                        <c:forEach items="${requestScope.listCategory}" var="l">
                                            <option value="${l.idc}">${l.name}</option> 
                                        </c:forEach>
                                    </select>

                                </div>
                                <div class="form-group">
                                    <input id="password-field" type="text" class="form-control" placeholder="Meaning of succulent" name="meaning" required>
                                    <br>
                                    <input id="password-field" type="text" class="form-control" placeholder="How to grow" name="grow" required>

                                </div>
                                <div class="form-group">
                                    <button type="submit" class="form-control btn btn-primary submit px-3">ADD SUCCULENT</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        </c:if>
        <c:if test="${sessionScope.account.role != 1}">
            <h3 class="mb-4 text-center">ONLY ADMIN CAN ACCESS THIS PAGE</h3>
        </c:if>

        <script src="js/jquery.min.js"></script>    
        <script src="js/popper.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>

