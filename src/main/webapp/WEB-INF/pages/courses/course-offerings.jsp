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
                    <input type="text" class="form-control" id="search-field" value="Search" onclick="this.value=''">
                </div>
                <!-- /input-group -->

            </div>

            <div class="search-results">
                <ul>
                    <c:forEach var="course" items="${courselist}">
                        <li><a class="courses" id="${course.id}" href="#">${course.id}</a></li>
                    </c:forEach>
                </ul>
            </div>
        </div>

        <div class="col-md-9 col-sm-8">

            <div class="add-btn blue-hover"><span class="glyphicon glyphicon-plus"></span> &nbsp;&nbsp; Add Course Offering</div>

            <div id="course-home">

            </div>

        </div>
    </div>

    <jsp:include page="../pagefrags/footer.jsp" />
</div>

<script type="text/javascript">
//    $( "#cse102" ).click(function() {
//        $( "#course-home" ).load( "/courses/view-offering" );
//    });

    $(document).ready(function() {
        $( ".courses" ).click(function(event) {
            $("#course-home").load("/courses/course-offering/" + event.target.id);
        });
    });

    $("#edit-cancel").click(function(){
        $( "#course-home" ).load( "/courses/cse102" );
    });


</script>

</body>
</html>