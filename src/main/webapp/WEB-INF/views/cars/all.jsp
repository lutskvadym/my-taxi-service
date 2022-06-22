<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../header/header_p1.jsp"></jsp:include>
</style>
<title>All cars</title>
</head>
<body>
<jsp:include page="../header/header_p2a.jsp"></jsp:include>

<h2 class="table_strips">All cars:</h2>
<table class="table_strips">
    <tr>
        <th>ID</th>
        <th>Model</th>
        <th>Name</th>
        <th>Country</th>
        <th>Drivers</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="car" items="${cars}">
        <tr>
            <td>
                <c:out value="${car.id}"/>
            </td>
            <td>
                <c:out value="${car.model}"/>
            </td>
            <td>
                <c:out value="${car.manufacturer.name}"/>
            </td>
            <td>
                <c:out value="${car.manufacturer.country}"/>
            </td>
            <td>
                <c:forEach var="driver" items="${car.drivers}">
                    ${driver.id} ${driver.name} ${driver.licenseNumber} <br>
                </c:forEach>
            </td>
            <td>
                <button onclick="window.location.href='${pageContext.request.contextPath}/cars/delete?id=${car.id}'">DELETE</button>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
