

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Shop Homepage - Start Bootstrap Template</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/shop-homepage.css" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

    </head>

    <body>

        <!-- Navigation -->
        <%@include file="NavComponent.jsp" %>

        <!--container-->
        <div class="container" style="margin-top: 7rem;margin-bottom: 7rem">

            <div class="mt-3">
                <h4>History Order</h4>
                <table class="w-100 table table-striped mt-3">
                    <thead>
                        <tr>
                            <th>Created Date</th>
                            <th>Account Name</th>
                            <th>Product Name</th>
                            <th>Product Price</th>
                            <th>Total Price</th>
                        </tr>
                    </thead>
                    <tbody> 
                        <c:forEach items="${listOrders}" var="O"> 
                            <tr>   
                                <td>
                                    ${O.createdDate}
                                </td>
                                <td>
                                    ${sessionScope.account.displayName}
                                </td>
                                <td>
                                    <div>
                                        <c:forEach items="${O.list}" var="D">
                                            ${D.productName}<br/>
                                        </c:forEach>
                                    </div>
                                </td>
                                <td>
                                    <div>
                                        <c:forEach items="${O.list}" var="D">
                                            ${D.productPrice}<br/>
                                        </c:forEach>
                                    </div>
                                </td>
                                <td>
                                    ${O.totalPrice}
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div class="text-right">
                    <a href="" class="btn btn-success ml-2">back to home 
                        <i class="fas fa-arrow-right ml-2"></i>
                    </a>
                </div>

            </div>


        </div>
        <!-- /.container -->

        <!-- Footer -->
        <footer class="py-5 bg-dark mt-5">
            <div class="container">
                <p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
            </div>
            <!-- /.container -->
        </footer>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    </body>

</html>

