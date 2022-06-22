<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header/header_p1.jsp"></jsp:include>
</style>
<title>Login page</title>
</head>
<body>
<form method="post" id="redirect">
<h2 class="table_main">Login page</h2>
<table class="table_main">
    <tr>
        <th>Please, use logins: bob or alice & password: 1234 to enter by default.</th>
    </tr>

    <tr><td></td></tr>
    <tr style="background-color: GhostWhite"><td>Enter your login: <input type="text" name="login" required></td></tr>
    <tr style="background-color: GhostWhite"><td>Enter your password: <input type="password" name="password" required></td></tr>
    <tr style="background-color: GhostWhite"><td><button type="submit">Log in</button></td></tr>
    <tr><td>${errorMsg}</td></tr>

    <tr><td></td></tr>
    <tr style="background-color: MintCream"><td>You can sign in by adding a new driver</td></tr>
    <tr style="background-color: MintCream"><td><button type="submit"><a href="${pageContext.request.contextPath}/drivers/add">Sign in</a></button></td></tr>
    <tr><td></td></tr>
</table>
</form>
</body>
</html>
