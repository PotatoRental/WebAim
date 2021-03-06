<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 10/18/13
  Time: 3:52 AM
--%>
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

        <div class="list col-md-12 row" id="search">

            <sec:authorize ifNotGranted="ROLE_ADMIN, ROLE_CIC">

                <div class=" blue-hover col-md-12 ">
                    <div class="input-group" id="search-input-group">
                      <span class="input-group-btn">
                        <span id="search-ico" class="glyphicon glyphicon-search"></span>
                      </span>
                        <input type="text" class="form-control" id="search-field" value="Search Courses"
                               onclick="this.value=''">
                    </div>
            </sec:authorize>


            <sec:authorize ifAnyGranted="ROLE_ADMIN, ROLE_CIC">
                <div class=" blue-hover col-md-3 ">
                    <div class="input-group" id="search-input-group">
                      <span class="input-group-btn">
                        <span id="search-ico" class="glyphicon glyphicon-search"></span>
                      </span>
                        <input type="text" class="form-control" id="search-field" value="Search Courses"
                               onclick="this.value=''">
                    </div>
                    <!-- /input-group -->

                </div>

                <div class="blue-hover col-md-9 ">
                    <div class="add-btn blue-hover" id="add-course"><span class="glyphicon glyphicon-plus"></span> &nbsp;&nbsp; Add
                        Course
                    </div>
                </div>
            </sec:authorize>
        </div>

        <div class="list col-md-12 col-sm-12 sidebar" id="list">
            <div class="search-results">
                <ul>
                    <c:forEach var="course" items="${courselist}">
                        <li><a class="courses" id="${course.id}" href="#">${course.id} <span
                                class="course-desc"> | ${course.name}</span></a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>

        <div class="col-md-9 col-sm-8">

            <div id="course-home"></div>

        </div>
    </div>

    <jsp:include page="../pagefrags/footer.jsp"/>
</div>

<script type="text/javascript">
    var smallToggled = false;
    $(document).ready(function () {
        $(".courses").click(function (event) {
            $(".course-desc").hide();
            if (!smallToggled) {
                $(".sidebar").addClass("col-md-3");
                $(".sidebar").addClass("col-sm-3");
                $(".sidebar").removeClass("col-md-12");
                $(".sidebar").removeClass("col-sm-12");
                smallToggled = true;
            }
            $("#course-home").load("/courses/" + event.currentTarget.id);
        });
    });

    $("#add-course").click(function () {
        if (!smallToggled) {
            $(".sidebar").addClass("col-md-3");
            $(".sidebar").addClass("col-sm-3");
            $(".sidebar").removeClass("col-md-12");
            $(".sidebar").removeClass("col-sm-12");
            smallToggled = true;
        }
        $("#course-home").load("/courses/add-course");
    })

    $("#search-field").keyup(function () {
        var keyword = $("#search-field").val();

        $.extend($.expr[':'], {
            'contains': function (elem, i, match, array) {
                return $(elem).text().toLowerCase().indexOf(match[3].toLowerCase()) >= 0;
            }
        });

        $(".courses").hide();
        $(".courses").filter(":contains('" + keyword + "')").show();
    })
</script>

</body>
</html>