

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
        <!--container-->
        <div class="container" style="margin-bottom: 7rem">
            <div class="mt-3">
                <nav class="navbar navbar-light bg-light">
                    <div class="container-fluid">
                        <a class="navbar-brand">Manager Product</a>
                        <div class="d-flex">
                            <a href="add-product" style="margin-left: 5px" class="btn  bg-success text-white" type="submit">Add new product</a>
                        </div>
                    </div>
                </nav>
                <table class="w-100 table table-striped mt-3">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name of Product</th>
                            <th>Image</th>
                            <th>Price</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listProduct}" var="P">
                            <tr>   
                                <td>${P.id}</td>
                                <td>${P.name}</td>
                                <td><img style="width: 100px" class="card-img-top" src="images/${P.image}" alt=""></td>
                                <td>${P.price}</td>
                                <td>
                                    <div  class="d-flex">
                                        <a href="delete-product?productId=${P.id}" class="btn bg-danger text-white" type="submit">Delete</a>
                                        <a style="margin-left: 5px" class="btn  bg-success text-white" type="submit">Update</a>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div>
                    <a href="home" class="btn  bg-success text-white" type="submit">Back to home</a>
                </div>
                <nav style="float: right" class="float-end" aria-label="Page navigation example">
                    <ul class="pagination">
                        <li class="page-item ${pageIndex==1?"disabled":""}"><a class="page-link" href="manager-product?pageIndex=${pageIndex-1}">Previous</a></li>
                            <c:forEach begin="1" end="${totalPage}" var="i">
                            <li class="page-item ${pageIndex == i?"active":""}"><a class="page-link" href="manager-product?pageIndex=${i}">${i}</a></li>                        
                            </c:forEach>
                        <li class="page-item ${pageIndex==3?"disabled":""}"><a class="page-link" href="manager-product?pageIndex=${pageIndex-1}">Next</a></li>
                    </ul>
                </nav>
            </div>
        </div>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    </body>

</html>

