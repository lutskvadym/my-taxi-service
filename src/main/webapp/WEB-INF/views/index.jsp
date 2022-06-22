<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header/header_p1.jsp"></jsp:include>
</style>
<title>Main page</title>
</head>
<body>
<jsp:include page="header/header_p2.jsp"></jsp:include>
<form method="post" id="redirect"></form>
<h2 class="table_main">Main page</h2>
<table class="table_main">
    <tr>
        <th>Please, use id# 1,2,3... for cars, drivers and manufactures. Check "Show all..." for available ids.</th>
    </tr>

    <tr><td></td></tr>
    <tr style="background-color: GhostWhite"><td>Drivers</td></tr>
    <tr style="background-color: GhostWhite"><td><button onclick="window.location.href='${pageContext.request.contextPath}/drivers/add'">
        Add a new driver</button></td></tr>
    <tr style="background-color: GhostWhite"><td><button onclick="window.location.href='${pageContext.request.contextPath}/drivers'">
        Show all drivers</button></td></tr>

    <tr><td></td></tr>
    <tr><td></td></tr>
    <tr style="background-color: MintCream"><td>Cars</td></tr>
    <tr style="background-color: MintCream"><td><button onclick="window.location.href='${pageContext.request.contextPath}/cars/add'">
        Add a new car</button></td></tr>
    <tr style="background-color: MintCream"><td><button onclick="window.location.href='${pageContext.request.contextPath}/cars'">
        Show all cars</button></td></tr>
    <tr style="background-color: #e7fbff"><td><button onclick="window.location.href='${pageContext.request.contextPath}/cars/logged'">
        Show current driver`s cars only</button></td></tr>

    <tr><td></td></tr>
    <tr><td></td></tr>
    <tr style="background-color: HoneyDew"><td>Manufacturers</td></tr>
    <tr style="background-color: HoneyDew"><td><button onclick="window.location.href='${pageContext.request.contextPath}/manufacturers/add'">Add a new manufacturer</button></td></tr>
    <tr style="background-color: HoneyDew"><td><button onclick="window.location.href='${pageContext.request.contextPath}/manufacturers'">Show all manufacturers</button></td></tr>

    <tr><td></td></tr>
    <tr><td></td></tr>
    <tr style="background-color: GhostWhite"><td>Car-driver dependencies</td></tr>
    <tr style="background-color: GhostWhite"><td><button onclick="window.location.href='${pageContext.request.contextPath}/cars/drivers/add'">Add the driver to the car</button></td></tr>
    <tr style="background-color: GhostWhite"><td><button onclick="window.location.href='${pageContext.request.contextPath}/cars/drivers'">Show all car-drive dependencies</button></td></tr>
    <tr><td></td></tr>
</table>
</body>
</html>
