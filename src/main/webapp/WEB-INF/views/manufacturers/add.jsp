<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../header/header_p1.jsp"></jsp:include>
</style>
<title>Add a manufacturer</title>
</head>
<body>
<jsp:include page="../header/header_p2a.jsp"></jsp:include>

<form method="post" id="manufacturer" action="${pageContext.request.contextPath}/manufacturers/add"></form>
<h2 class="table_strips">Add a manufacturer:</h2>
<table class="table_strips">
    <tr>
        <th>Name</th>
        <th>Country</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="name" form="manufacturer" required>
        </td>
        <td>
            <input type="text" name="country" form="manufacturer" required>
        </td>
        <td>
            <input type="submit" name="add" value="Add a manufacturer" form="manufacturer" required>
        </td>
    </tr>
</table>
</body>
</html>
