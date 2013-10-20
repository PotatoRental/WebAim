<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 10/18/13
  Time: 3:52 AM
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title><fmt:message key="title"/> | <fmt:message key="title.courses"/> </title>

    <meta name="author" content="Monika Tuchowska, Jason Chen, Yun Peng, Alvin Qiang"/>
    <jsp:include page="../pagefrags/imports.jsp"/>
</head>
<body>
<div class="container">

    <jsp:include page="../pagefrags/nav.jsp"/>

    <div class="row maincontent">

        <jsp:include page="../pagefrags/bread.jsp"/>

        <div class="list col-md-3 col-sm-3" id="list">
            <div class="row blue-hover">
                <div class="input-group" id="search-input-group">
                  <span class="input-group-btn">
                    <span id="search-ico" class="glyphicon glyphicon-search"></span>
                  </span>
                    <input type="text" class="form-control" id="search-field" value="Search Courses" onclick="this.value=''">
                </div>
                <!-- /input-group -->

            </div>

            <div class="search-results">
                <ul>
                    <li><a href="#" onclick="selectCourse()">CSE 102</a></li>
                    <li><a href="#">CSE 110</a></li>
                    <li><a href="#">CSE 114</a></li>
                    <li><a href="#">CSE 110</a></li>
                    <li><a href="#">CSE 114</a></li>
                    <li><a href="#">CSE 110</a></li>
                    <li><a href="#">CSE 114</a></li>
                    <li><a href="#">CSE 110</a></li>
                    <li><a href="#">CSE 114</a></li>
                    <li><a href="#">CSE 110</a></li>
                    <li><a href="#">CSE 114</a></li>
                    <li><a href="#">CSE 110</a></li>
                    <li><a href="#">CSE 114</a></li>
                    <li><a href="#">CSE 110</a></li>
                    <li><a href="#">CSE 114</a></li>
                </ul>
            </div>
        </div>

        <div class="col-md-8 col-sm-7 col-sm-offset-1 col-md-offset-1">

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

    <jsp:include page="../pagefrags/footer.jsp" />
</div>

</div>
</body>
</html>