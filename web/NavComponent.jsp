

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">Huy Hoang Watch</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="home">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <c:if test="${sessionScope.account.role eq 'ADMIN'}">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Manager Account</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="manager-product">Manager Product</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.account.role != 'ADMIN'}">
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                </c:if>
                <li class="nav-item">
                    <div class="d-flex">
                        <a class="nav-link" href="carts">Cart</a>
                        <span id="cart_number" style="color: orange">${sessionScope.carts.size()}</span>
                    </div>
                </li>
                <c:choose>
                    <c:when test="${sessionScope.account != null}">
                        <li class="nav-item ml-3">
                            <a class="nav-link"> ${sessionScope.account.displayName}</a>
                        </li>
                        <li class="nav-item ml-3">
                            <a class="nav-link" href="logout">Logout</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item">
                            <a class="nav-link" href="login">Login</a>
                        </li>
                    </c:otherwise>
                </c:choose>

            </ul>
            <form action="search" style="margin-left: 2px" class="d-flex">
                <input value="${keyword}" name="keyword" class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
