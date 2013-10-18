<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 10/18/13
  Time: 1:40 AM
--%>
<div class="col-md-12">
    <ol class="breadcrumb">
        <li><a href="/"><span class="glyphicon glyphicon-home"/></a></li>
    <span id="topnav">
        <sec:ifLoggedIn><a href="#"><sec:username/></a></sec:ifLoggedIn>
        <sec:ifNotLoggedIn><g:link controller="login" action="auth">Login</g:link></sec:ifNotLoggedIn>
        <sec:ifLoggedIn><g:link controller="logout">| Log Out</g:link></sec:ifLoggedIn>
    </span>
    </ol>
</div>