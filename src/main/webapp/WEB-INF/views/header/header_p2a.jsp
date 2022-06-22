<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="header">
  <a href="https://mate.academy/" class="logo">Mate.Academy</a>
  <div class="header-right">
    <a href="${pageContext.request.contextPath}/index">Main page</a>
    <a href="${pageContext.request.contextPath}/logout">Logout</a>
  </div>
</div>
<div class="driver_id"> Logged with driver ID: <c:out value="${sessionScope.driver_id}"/></div>
