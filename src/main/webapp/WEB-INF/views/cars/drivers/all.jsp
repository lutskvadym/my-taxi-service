<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../../header/header_p1.jsp"></jsp:include>
</style>
<title>All cars-drivers</title>
</head>
<body>
<jsp:include page="../../header/header_p2a.jsp"></jsp:include>

<h2 class="table_strips">All cars-drivers:</h2>
<table class="table_strips">
    <tr>
        <th>Car_ID</th>
        <th>Driver_ID</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="cardriver" items="${carsdrivers}">
        <tr>
            <c:forEach var="splt" items="${fn:split(cardriver,':')}">
                <td>
                <c:out value="${splt}"/>
                </td>
            </c:forEach>
            <td>
                <button onclick="window.location.href='${pageContext.request.contextPath}/cars/drivers/delete?ids=${cardriver}'">DELETE</button>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
