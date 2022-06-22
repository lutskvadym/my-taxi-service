<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="../header/header_p1.jsp"></jsp:include>
</style>
<title>Add a driver</title>
</head>
<body>
<jsp:include page="../header/header_p2a.jsp"></jsp:include>

<form method="post" id="driver" action="${pageContext.request.contextPath}/drivers/add"></form>
<h2 class="table_strips">Add a driver:</h2>
<table class="table_strips">
    <tr>
        <th>Name</th>
        <th>License #</th>
        <th>Login</th>
        <th>Password</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="name" form="driver" required>
        </td>
        <td>
            <input type="text" name="license_number" form="driver" required>
        </td>
        <td>
            <input type="text" name="login" form="driver" required>
        </td>
        <td>
            <input type="password" name="password" form="driver" required>
        </td>
        <td>
            <input type="submit" name="add" value="Add a driver" form="driver">
        </td>
    </tr>
</table>
</body>
</html>
