<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<p>

<h1>${offering.course.id}-${offering.section}</h1>
<sec:authorize ifAnyGranted="ROLE_ADMIN, ROLE_CIC">
    &nbsp;&nbsp;<a id="edit-offering" href="#">Edit</a>
</sec:authorize>
<h1><span class="glyphicon glyphicon-circle-arrow-left  link close-col pull-right"></span></h1>
</p>
<table class="table table-bordered table-striped">
    <tr>
        <td class="title-col">Course</td>
        <td><a id="${offering.id}" href="/courses/${offering.course.id}">${offering.course.id}</a></td>
    </tr>
    <tr>
        <td class="title-col">
            Section
        </td>
        <td>
            ${offering.section}
        </td>
    </tr>
    <tr>
        <td class="title-col">
            Semester
        </td>
        <td>
            ${offering.semester}
        </td>
    </tr>
    <tr>
        <td class="title-col">
            Instructor
        </td>
        <td>
            <a href="/users/${offering.instructor.username}">${offering.instructor.firstName} ${offering.instructor.lastName}</a>
        </td>
    </tr>
    <tr>
        <td class="title-col">
            Syllabus
        </td>
        <td>
            <a href="#">syllabus.pdf</a>
        </td>
    </tr>
    <tr>
        <td class="title-col">
            Schedule
        </td>
        <td>
            ${offering.schedulePath}
        </td>
    </tr>
    <tr>
        <td class="title-col">
            Lecture Notes
        </td>
        <td>
            <ul class="list-unstyled">
                <c:forEach items="${offering.lectureNotes}" var="notes">
                    <li> ${notes.name} </li>
                </c:forEach>
            </ul>
        </td>
    </tr>
    <tr>
        <td class="title-col">
            Assignments
        </td>
        <td>
            <ul class="list-unstyled">
                <c:forEach items="${offering.assignments}" var="assignment">
                    <li> ${assignment.name} </li>
                </c:forEach>
            </ul>
        </td>
    </tr>
    <tr>
        <td class="title-col">
            Course Outcome Attainment Target
        </td>
        <td>
            <table>
                <c:forEach items="${course.courseOutcomes}" var="outcome">
                    <tr>
                        <td>
                            ${outcome.description}
                        <td/>


                    </tr>
                </c:forEach>
            </table>
        </td>
    </tr>
    <tr>
        <td class="title-col">
            Course Outcome Direct Assessments
        </td>
        <td>

        </td>
    </tr>
    <tr>
        <td class="title-col">
            Course Outcome Survey Results
        </td>
        <td>
            <input type='file' name="end-of-semester-report"/>
        </td>
    </tr>
    <tr>
        <td class="title-col">
            End-of-Semester Report
        </td>
        <td>
            ${offering.eosReportPath}
        </td>
    </tr>
    <tr>
        <td class="title-col">
            Course Coordinator Report
        </td>
        <td>
            ${offering.ccReportPath}
        </td>
    </tr>
    <tr>
        <td class="title-col">
            CIC Report
        </td>
        <td>
            ${offering.cicReportPath}
        </td>
    </tr>

</table>

<script type="text/javascript">

    $("#edit-offering").click(function () {

        $("#course-home").load("/courses/offerings/${offering.id}/edit-offering");
    });

    $(".close-col").click(function () {
        $(".sidebar").switchClass("col-md-3", "col-md-12", 200, "easeInOutQuad");
        $(".sidebar").addClass("col-sm-12");
        $(".sidebar").removeClass("col-sm-3");
        $(".course-desc").show();
        $("#course-home").html("");
        smallToggled = false;
    });
</script>