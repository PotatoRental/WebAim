<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 10/18/13
  Time: 1:40 AM
--%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-md-12">
    <ol class="breadcrumb">
        <li><a href="/"><span class="glyphicon glyphicon-home"></span></a></li>
    <span id="top-nav">
        <sec:authorize access="isAuthenticated()"><a href="#"><sec:authentication
                property="principal.username"/></a></sec:authorize>
        <sec:authorize access="isAnonymous()"><a href="/login">Login</a></sec:authorize>
        <sec:authorize access="isAuthenticated()"><a href="logout">| Log Out</a></sec:authorize>
    </span>
    </ol>
</div>
<div class="col-md-12">
<c:if test="${not empty globalMessage}">
    <div class="global-messages">
        <div class="bs-callout">
            <h4>Admin message:</h4>

            <p> ${globalMessage}</p>
        </div>

    </div>
</div>
</c:if>