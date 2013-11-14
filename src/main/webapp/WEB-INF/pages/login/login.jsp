<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 10/18/13
  Time: 4:21 AM
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title><fmt:message key="title"/> | <fmt:message key="title.login"/></title>
    <jsp:include page="../pagefrags/imports.jsp"/>
</head>
<body>

<div class="container">
    <ul id="cbp-tm-menu" class="cbp-tm-menu">
        <a href="/" style="float:left"><img id="aim-logo" src="/images/logo_b.png"/></a>
    </ul>
</div>

<div id='centered-login'>

    <div id='login'>

        <h1>Sign In</h1>
        <br>
        <br>
        <c:if test="${not empty loginMessage}">
            <h4 class="error-login">Login failed: ${loginMessage}</h4>
        </c:if>
        <form:form modelAttribute="loginForm" method='POST' id='loginForm' cssClass='cssform' autocomplete='off' action="login-check">
            <p>
                <input type='text' class='form-control' name='username' id='username' autofocus="autofocus" placeholder="Username" required/>
            </p>

            <p>
                <input type='password' class='form-control' name='password' id='password' placeholder="Password" required/>
            </p>

            <p>
                <input type='submit' class="btn btn-default fat-btn blue-hover" id="submit" value='Sign In'/>
            </p>
        </form:form>
    </div>
</div>

</body>
</html>