<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title><fmt:message key="title"/> | ${user.firstName} ${user.lastName}</title>

    <meta name="author" content="Monika Tuchowska, Jason Chen, Yun Peng, Alvin Qiang"/>
    <jsp:include page="../pagefrags/imports.jsp"/>
</head>
<body>
<div class="container">

    <jsp:include page="../pagefrags/nav.jsp"/>

    <div class="row maincontent">

        <jsp:include page="../pagefrags/bread.jsp"/>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

        <div class="col-md-12 col-lg-12">
<p>
            <c:if test="${not empty userMessage}">
                <h3>${userMessage}</h3>
            </c:if>
<h1>${user.firstName} ${user.lastName}</h1>

    &nbsp;&nbsp;<a id="edit-user" href="/users/${user.username}/edit">Edit</a>

</p>
<table class="table table-bordered table-striped">
    <tr>
        <td class="title-col">Full Name</td>
        <td>${user.firstName} ${user.lastName}</td>
    </tr>
    <tr>
        <td class="title-col">Username</td>
        <td>${user.username}</td>
    </tr>
    <tr>
        <td class="title-col">Email</td>
        <td>${user.email}</td>
    </tr>
    <tr>
        <td class="title-col">Roles</td>
        <td>
            <ul class="list-unstyled">
                <c:forEach var="role" items ="${user.roles}">
                    <li>${role.role}</li>
                </c:forEach>
            </ul>
        </td>

    </tr>
    <tr>
        <td class="title-col">Evaluation Period</td>
        <td>NA</td>
    </tr>

</table>

    </div>
</div>

<jsp:include page="../pagefrags/footer.jsp"/>
                </div>

<script type="text/javascript">

</script>