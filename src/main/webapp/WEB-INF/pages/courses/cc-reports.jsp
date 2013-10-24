<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

        <div class="list col-md-3 col-sm-3" id="list">
            <sec:authorize ifAnyGranted="ROLE_CC">
                <div class="add-btn">
                    Courses You Are Coordinating:
                </div>
                <div class="search-results">
                    <ul>
                        <li><a href="#">CSE 110</a></li>
                        <li><a href="#">CSE 114</a></li>
                        <li><a href="#">CSE 110</a></li>
                        <li><a href="#">CSE 114</a></li>
                    </ul>
                </div>
            </sec:authorize>

            <sec:authorize ifAnyGranted="ROLE_ADMIN">

                <div class="row blue-hover">
                    <div class="input-group" id="search-input-group">
                  <span class="input-group-btn">
                    <span id="search-ico" class="glyphicon glyphicon-search"></span>
                  </span>
                        <input type="text" class="form-control" id="search-field" value="Search Courses"
                               onclick="this.value=''">
                    </div>
                    <!-- /input-group -->

                </div>

                <div class="search-results">
                    <ul>
                        <li><a href="#">CSE 102</a></li>
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
            </sec:authorize>
        </div>

        <div class="col-md-9 col-sm-8">

            <div>
                <h3 class="hint">Select a course to get started.</h3>
            </div>

            <div id="course-home">

            </div>

        </div>
    </div>

    <jsp:include page="../pagefrags/footer.jsp"/>
</div>

</div>
</body>
</html>