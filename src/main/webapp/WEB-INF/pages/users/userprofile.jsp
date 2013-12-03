<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title><fmt:message key="title"/> | <fmt:message key="title.courses"/></title>

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
<h1>Walter White</h1>

    &nbsp;&nbsp;<a id="edit-course" href="/users/edit">Edit</a>

</p>
<table class="table table-bordered table-striped">
    <tr>
        <td class="title-col">Full Name</td>
        <td>Walter White</td>
    </tr>
    <tr>
        <td class="title-col">Username</td>
        <td>wwhite</td>
    </tr>
    <tr>
        <td class="title-col">Email</td>
        <td>heisenberg@sbu</td>
    </tr>
    <tr>
        <td class="title-col">Roles</td>
        <td>
            <ul class="list-unstyled">
                <li>
                    Course Coordinator
                </li>
                <li>
                    Instructor
                </li>
            </ul>
        </td>
    </tr>

</table>

    </div>
</div>

<jsp:include page="../pagefrags/footer.jsp"/>
                </div>

<script type="text/javascript">

</script>