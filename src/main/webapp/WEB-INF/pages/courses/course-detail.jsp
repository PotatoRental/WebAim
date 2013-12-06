<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<p>
    <h1>${course.id}</h1>
    <sec:authorize ifAnyGranted="ROLE_ADMIN, ROLE_CIC">
        &nbsp;&nbsp;<a id="edit-course" href="#">Edit</a>
    </sec:authorize>
    <h1><span class="glyphicon glyphicon-circle-arrow-left  link close-col pull-right"></span> </h1>
</p>
<table class="table table-bordered table-striped">
    <tr>
        <td class="title-col">Course Identifier</td>
        <td>${course.id}</td>
    </tr>
    <tr>
        <td class="title-col">Course Name</td>
        <td>${course.name}</td>
    </tr>
    <tr>
        <td class="title-col">Course Coordinator</td>
        <td><a href="/users/${course.courseCoordinator.username}">${course.courseCoordinator.firstName} ${course.courseCoordinator.lastName}</a></td>
    </tr>
    <tr>
        <td class="title-col">Alternate Course Coordinators:</td>
        <td><a href="/users/${course.alternateCourseCoordinator.username}">${course.alternateCourseCoordinator.firstName} ${course.alternateCourseCoordinator.lastName}</a></td>
    </tr>
    <tr>
        <td class="title-col">Degree Programs</td>
        <td>
            <c:if test="${not empty course.degreeprograms}">
                <ul class="list-unstyled">
                    <c:forEach var="degree" items="${course.degreeprograms}">
                        <li>
                            ${degree.department}
                        </li>
                    </c:forEach>
                </ul>
            </c:if>
        </td>
    </tr>
    <tr>
        <td class="title-col">
            Course Outcomes:
        </td>
        <td>
            <c:if test="${not empty course.courseOutcomes}">
                <ul>
                   <c:forEach var="outcome" items="${course.courseOutcomes}">
                       <li>${outcome.description}</li>
                   </c:forEach>
                </ul>
            </c:if>
        </td>
    </tr>

</table>

<script type="text/javascript">
    $("#edit-course").click(function(){
        $( "#course-home" ).load( "/courses/${course.id}/edit" );
    });
    $(".close-col").click(function(){
        $(".sidebar").switchClass( "col-md-3", "col-md-12", 200, "easeInOutQuad" );
        $(".sidebar").addClass("col-sm-12");
        $(".sidebar").removeClass("col-sm-3");
        $(".course-desc").show();
        $("#course-home").html("");
        smallToggled=false;
    } );
</script>