<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<p>

<h1>CSE 102-01</h1>
<sec:authorize ifAnyGranted="ROLE_ADMIN, ROLE_CIC">
    &nbsp;&nbsp;<a id="edit-offering" href="#">Edit</a>
</sec:authorize>
<h1><span class="glyphicon glyphicon-circle-arrow-left  link close-col pull-right"></span> </h1>
</p>
<table class="table table-bordered table-striped">
    <tr>
        <td class="title-col">Course</td>
        <td>CSE 102</td>
    </tr>
    <tr>
        <td class="title-col">
            Section
        </td>
        <td>
            01
        </td>
    </tr>
    <tr>
        <td class="title-col">
            Semester
        </td>
        <td>
            Fall 2013
        </td>
    </tr>
    <tr>
        <td class="title-col">
            Instructor
        </td>
        <td>
            <a href="#">Walter White</a>
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
            <a href="#">schedule.pdf</a>
        </td>
    </tr>
    <tr>
        <td class="title-col">
            Lecture Notes
        </td>
        <td>
            <ul class="list-unstyled">
                <li><a href="#">11-07-2013.pdf</a></li>
                <li><a href="#">11-08-2013.pdf</a></li>
            </ul>
        </td>
    </tr>
    <tr>
        <td class="title-col">
           Assignments
        </td>
        <td>
            <ul class="list-unstyled">
            <li><a href="#">HW 1: Basic HTML</a></li>
            <li><a href="#">HW 2: Links and Images</a></li>
            <li><a href="#">HW 3: Tables and Lists</a></li>
            <li><a href="#">HW 4: CSS</a></li>
            </ul>
        </td>
    </tr>
    <tr>
        <td class="title-col">
            Course Outcome Attainment Target
        </td>
        <td>
            the target fraction
                of students expected to achieve that course outcome.
        </td>
    </tr>
    <tr>
        <td class="title-col">
            Course Outcome Direct Assessments
        </td>
        <td>
            hi
        </td>
    </tr>
    <tr>
        <td class="title-col">
            Course Outcome Survey Results
        </td>
        <td>
            hi
        </td>
    </tr>
    <tr>
        <td class="title-col">
            End-of-Semester Report
        </td>
        <td>
            <a href="#">report.txt</a>
        </td>
    </tr>
    <tr>
        <td class="title-col">
            Course Coordinator Report
        </td>
        <td>
            <a href="#">report.txt</a>
        </td>
    </tr>
    <tr>
        <td class="title-col">
            CIC Report
        </td>
        <td>
            <a href="#">report.txt</a>
        </td>
    </tr>

</table>

<script type="text/javascript">
    $("#edit-offering").click(function () {
        $("#offering-home").load("/courses/edit-offering");
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