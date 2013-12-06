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

        <div class="list col-md-12 row" id="search" >
            <sec:authorize ifNotGranted="ROLE_CIC, ROLE_ADMIN">
                <div class=" blue-hover col-md-12 ">
                    <div class="input-group" id="search-input-group">
                      <span class="input-group-btn">
                        <span id="search-ico" class="glyphicon glyphicon-search"></span>
                      </span>
                        <input type="text" class="form-control" id="search-field" value="Search Course Offerings"
                               onclick="this.value=''">
                    </div>
                    <!-- /input-group -->

                </div>

            </sec:authorize>
            <sec:authorize ifAnyGranted=" ROLE_CIC, ROLE_ADMIN">
            <div class=" blue-hover col-md-3 ">
                <div class="input-group" id="search-input-group">
                      <span class="input-group-btn">
                        <span id="search-ico" class="glyphicon glyphicon-search"></span>
                      </span>
                    <input type="text" class="form-control" id="search-field" value="Search Course Offerings"
                           onclick="this.value=''">
                </div>
                <!-- /input-group -->

            </div>
            <div class="blue-hover col-md-9 ">
                <div class="add-btn blue-hover" id="add-offering"><span class="glyphicon glyphicon-plus"></span> &nbsp;&nbsp; Add Course Offering</div>
            </div>
            </sec:authorize>

        </div>

        <div class="list col-md-12 col-sm-12 sidebar" id="list">
            <div class="search-results">
                <ul>
                    <c:forEach var="course" items="${courseAndOffering}">
                        <li id="${course.key.id}" class="course search-list">${course.key.id}<span class="course-desc"> | ${course.key.name}</span></li>
                        <c:forEach var="offering" items="${course.value}">
                            <li class="search-list hidden offering link ${course.key.id}" id=${offering.id}>
                                &emsp;${offering.semester}
                            </li>
                        </c:forEach>
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
        $("#edit-offering").click(function () {
            $("#offering-home").load("/courses/1/edit-offering");
        });

        $(".offering").click(function (event) {

            if (!smallToggled) {
                $(".sidebar").addClass("col-md-3");
                $(".sidebar").addClass("col-sm-3");
                $(".sidebar").removeClass("col-md-12");
                $(".sidebar").removeClass("col-sm-12");
                smallToggled = true;
            }
            $(".course-desc").hide();
            $("#course-home").load("/courses/offerings/" + event.currentTarget.id);
        });
    });

    $("#add-offering").click(function () {
        if (!smallToggled) {
            $(".sidebar").addClass("col-md-3");
            $(".sidebar").addClass("col-sm-3");
            $(".sidebar").removeClass("col-md-12");
            $(".sidebar").removeClass("col-sm-12");
            smallToggled = true;
        }
        //$("#course-home").load("/courses/offerings/add-offering");
    }) ;

    $(".course").click(function(){
        var classname = "."+$(this).attr("id");
        $(classname).toggleClass("hidden");
    })  ;

    $("#search-field").keyup(function(){
        var keyword = $("#search-field").val();

        $.extend($.expr[':'], {
            'contains': function(elem, i, match, array){
                return $(elem).text().toLowerCase().indexOf(match[3].toLowerCase()) >= 0;
            }
        });

        $(".search-list").hide();
        $(".search-list").filter(":contains('"+keyword+"')").show();
    })
</script>

</body>
</html>