<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 10/18/13
  Time: 4:21 AM
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
        <a href="/" style="float:left"><img id="aimlogo" src="/images/logo_b.png"/></a>
    </ul>
</div>

<div id='login-wrap'>

    <div id='login'>

        <h2>Sign In</h2>
        <br>
        <form:form modelAttribute="loginForm" method='POST' id='loginForm' cssClass='cssform' autocomplete='off' action="login-check">
            <p>
                <label id='username-label' for='username'>Username</label>
                <input type='text' class='form-control' name='username' id='username' autofocus="autofocus"/>
            </p>

            <p>
                <label id='password-label' for='password'>Password</label>
                <input type='password' class='form-control' name='password' id='password'/>
            </p>

            <p>
                <input type='submit' class="btn btn-default blue-button" id="submit" value='Sign In'/>
            </p>
        </form:form>
    </div>
</div>

</body>
</html>