<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../header/header_p1.jsp"></jsp:include>
</style>
<title>Add a car</title>
</head>
<body>
<jsp:include page="../header/header_p2a.jsp"></jsp:include>

<form method="post" id="car" action="${pageContext.request.contextPath}/cars/add"></form>
<h2 class="table_strips">Add a car:</h2>
<table class="table_strips">
    <tr>
        <th>Model</th>
        <th>Manufacturer ID</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="model" form="car" required>
        </td>
        <td>
            <input type="number" name="manufacturer_id" form="car" required>
        </td>
        <td>
            <input type="submit" name="add" value="Add a car" form="car">
        </td>
    </tr>
</table>
</body>
</html>
