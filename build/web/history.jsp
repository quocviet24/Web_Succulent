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
                        <h1 >History by succulent</h1>
                    </div>
                </div>
                <div >
                    <div >
                        <div style="color: black; text-align: center ">
                            <h3 class="mb-4 text-center"> History user buy succulent </h3>
                            <c:set var="i" value="0"/>
                            <table border="2px">
                                <tr>
                                    <td style="width:20%"> <h3>STT</h3> </td>
                                    <td style="width:20%"> <h3>Username</h3> </td>
                                    <td style="width:10%"><h3>ID sản phẩm</h3></td>
                                    <td style="width:20%"> <h3>Quantity</h3> </td>
                                    <td style="width:20%"> <h3>Price/Product</h3> </td>
                                </tr>
                                <c:forEach items="${requestScope.listAccount}" var="l">
                                    <c:set var="i" value="${i+1}"/>
                                    <tr>
                                        <td>${i}</td>
                                        <td>${l.getUsername()}</td>
                                        <td>${l.getIDSu()}</td>
                                        <td>${l.getQuantity()}</td>
                                        <td>${l.getPrice()}</td>
                                        
                                    </tr>  
                                </c:forEach>
                            </table>     

                        </div>
                    </div>
                    <p><button onclick='window.history.go(-1);'>Back to previous page</button>
                    <p><a href="home.jsp">Back to homepage</a>
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

