

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-lg-3">

    <h3 class="my-4">Category</h3>
    <ul class="list-group">
        <c:forEach items="${sessionScope.listCategory}" var="C">
            <c:if test="${categoryId eq C.id}">
                <li class="list-group-item active" aria-current="true">
                    <a class="text-decoration-none text-white" href="filter?categoryId=${C.id}">${C.categoryName}</a>
                </li>
            </c:if>
            <c:if test="${categoryId != C.id}">
                <li class="list-group-item  " aria-current="true">
                    <a class="text-decoration-none" href="filter?categoryId=${C.id}">${C.categoryName}</a>
                </li>
            </c:if>
        </c:forEach>
    </ul>
</div>
