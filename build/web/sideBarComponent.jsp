

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-lg-3">

    <h3 class="my-4">Category</h3>
    <div class="list-group">
        <c:forEach items="${sessionScope.listCategory}" var="C">
            <a href="filter?categoryId=${C.id}" class="list-group-item">${C.categoryName}</a>
        </c:forEach>
    </div>

</div>
