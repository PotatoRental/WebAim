<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 10/18/13
  Time: 1:40 AM
--%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div class="col-md-12">
    <ol class="breadcrumb">
        <li><a href="/"><span class="glyphicon glyphicon-home"/></a></li>
    <span id="topnav">
        <sec:authorize access="isAuthenticated()"><a href="#"><sec:authentication property="principal.username"/></a></sec:authorize>
        <sec:authorize access="isAnonymous()"><a href="/login">Login</a></sec:authorize>
        <sec:authorize access="isAuthenticated()"><a href="logout">| Log Out</a></sec:authorize>
    </span>
    </ol>
</div>