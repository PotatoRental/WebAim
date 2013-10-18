<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 10/18/13
  Time: 3:52 AM
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html ng-app>
<head>
    <title><fmt:message key="title"/>${title}</title>

    <meta name="author" content="Monika Tuchowska, Jason Chen, Yun Peng, Alvin Qiang"/>
    <jsp:include page="../pagefrags/imports.jsp"/>
</head>
<body>
<div class="container">

    <jsp:include page="../pagefrags/nav.jsp"/>

    <div class="row maincontent">

        <jsp:include page="../pagefrags/bread.jsp"/>

        <div class="col-md-4 col-sm-4 searchbar" id="searchbar" ng-controller="searchCtrl">
            <div class="row">
                <span id="search-ico" class="glyphicon glyphicon-search"></span>
                <input type="text" ng-model="search" id="searchfield" value="Search Courses" onclick="this.value=''">
            </div>
            <!-- /input-group -->

            <div class="search-results">
                <ul>
                    <li><a href="#" onclick="selectCourse()">CSE 102</a></li>
                    <li ng-repeat="course in courses | filter:search">
                        <a href="#" id={{course.id}}>{{course.name}}</a>
                    </li>

                </ul>
            </div>
        </div>

        <div class="col-md-8 col-sm-8">

            <div id="course-home">
                <g:include view="courses.gsp"/>
            </div>
            <div class="importpage" id="cse102">
                <g:include view="course.gsp"/>
            </div>

            <div class="importpage" id="edit-form">
                <g:include view="course2.gsp"/>
            </div>
        </div>
    </div>

    <div class="col-md-12 content">
        <div class="copyrights">
            <small>&copy; 2013 Qiang He, Yun Pang, Jason Chen, Monika Tuchowska</small>
        </div>
    </div>
</div>

</div>
</body>
</html>