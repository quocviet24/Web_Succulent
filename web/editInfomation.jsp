<%-- 
    Document   : editInfomation
    Created on : Mar 6, 2024, 4:59:50 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                        <h1 >Edit succulent</h1>
                    </div>
                </div>
                <div >
                    <div >
                        <div >
                            <h3 class="mb-4 text-center">Edit information about Succulent </h3>
                            <h4 style="color: red">${requestScope.error}</h4>
                            <h4 style="color: red">${requestScope.error1}</h4>
                            <h4 style="color: greenyellow">${requestScope.done}</h4>

                            <form action="updateSucculent" class="signin-form">
                                <!-- Edit succulent -->
                                <c:set value="${requestScope.infoSucculent}" var="a"/>
                                <div class="form-group" style="display: flex; justify-content: space-evenly">
                                    <input type="text" class="form-control" placeholder="ID" name="id" value="${a.getIDsu()}" readonly>
                                    <input type="text" class="form-control" placeholder="Name Succulent" name="name" value="${a.getName()}">
                                    <input type="text" class="form-control" placeholder="Price" name="price" value="${a.getPrice()}">
                                </div>
                                <div class="form-group" style="display: flex;">
                                    <br><input id="password-field" type="text" class="form-control" placeholder="Quantity" name="quantity" value="${a.getQuantity()}">
                                    <br>
                                    <input id="password-field" type="text" class="form-control" placeholder="Link Img" name="img" required value="${a.getImg()}">

                                </div>

                                <input id="password-field" type="text" class="form-control" placeholder="Describe about succulent" name="describe" required value="${a.getDescribe()}">
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
                                    <input id="password-field" type="text" class="form-control" placeholder="Meaning of succulent" name="meaning" required value="${a.getMeaning()}">
                                    <br>
                                    <input id="password-field" type="text" class="form-control" placeholder="How to grow" name="grow" required value="${a.getGrow()}">

                                </div>
                                <div class="form-group">
                                    <button type="submit" class="form-control btn btn-primary submit px-3">UPDATE SUCCULENT</button>
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

