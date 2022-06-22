<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../header/header_p1.jsp"></jsp:include>
</style>
<title>All manufacturers</title>
</head>
<body>
<jsp:include page="../header/header_p2a.jsp"></jsp:include>

<h2 class="table_strips">All manufacturers:</h2>
<table class="table_strips">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>License #</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="manufacturer" items="${manufacturers}">
        <tr>
            <td>
                <c:out value="${manufacturer.id}"/>
            </td>
            <td>
                <c:out value="${manufacturer.name}"/>
            </td>
            <td>
                <c:out value="${manufacturer.country}"/>
            </td>
            <td>
                <button onclick="window.location.href='${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}'">DELETE</button>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
