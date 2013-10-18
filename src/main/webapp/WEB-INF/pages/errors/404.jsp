<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 10/18/13
  Time: 2:26 AM
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title><fmt:message key="title"/> | <fmt:message key="title.404"/></title>
    <jsp:include page="../pagefrags/imports.jsp"/>
</head>
<body>
<div class="maincontent">
    <jsp:include page="../pagefrags/nav.jsp"/>
    <h1>404 Page not found sadness</h1>
</div>
</body>
</html>