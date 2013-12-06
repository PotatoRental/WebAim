<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<p>

<h1>${offering.course.id}-${offering.section}</h1>

    &nbsp;&nbsp;<a id="edit-cancel" href="#">Cancel</a>

</p>

<form:form method="POST" commandName="modifyOffering">
    <table class="table table-bordered table-striped">
        <sec:authorize ifAnyGranted="ROLE_INSTR, ROLE_CIC, ROLE_ADMIN">
        <tr>
            <td class="title-col">Course</td>
            <td>
                <select class="fat" name="course">
                    <c:forEach var="course" items="${courses}">
                        <option value="${course.id}">${course.id}</option>

                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Section
            </td>
            <td>
                <input name="section" required type="text" class="fat" onclick="this.select()" value="${offering.section}">
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Semester
            </td>
            <td>
                <select name="semester">
                    <option value="Fall" selected="selected">Fall</option>
                    <option value="Spring">Spring</option>
                </select>
                <select name="year">
                    <c:forEach var="i" begin="0" end="20" step="1">
                        <option value="${2014-i}">${2014-i}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Instructor
            </td>
            <td>
                <select class="fat" name="instructor">
                    <c:forEach items="${instructors}" var="instructor">
                        <option value="${instructor.username}">${instructor.firstName} ${instructor.lastName}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Syllabus
            </td>
            <td>
                Current file: ${offering.syllabusPath}
                <br/>
                <input type='file' name="syllabus"/>
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Schedule
            </td>
            <td>
               Current file: ${offering.schedulePath}
                <br/>
                <input type='file' name="schedule" />
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Lecture Notes
            </td>
            <td>
                <ul class="list-unstyled">


                </ul>
                <input type='file' name="lecture-notes" />
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Assignments
            </td>
            <td>
                <ul class="list-unstyled">


                </ul>
                <input type='file' name="assignments" />
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Course Outcome Attainment Target
            </td>
            <td>

            </td>
        </tr>

            <tr>
                <td class="title-col">
                    End-of-Semester Report
                </td>
                <td>
                        ${offering.eosReportPath}
                    <br/>
                    <input type='file' name="end-of-semester-report" />
                </td>
            </tr>

        <tr>
            <td class="title-col">
                Course Outcome Direct Assessments
            </td>
            <td>

            </td>
        </tr>

            </sec:authorize>
        <sec:authorize ifAnyGranted=" ROLE_CIC, ROLE_ADMIN">
        <tr>
            <td class="title-col">
                Course Outcome Survey Results
            </td>
            <td>
                <input type='file' name="end-of-semester-report" />
            </td>
        </tr>


        <tr>
            <td class="title-col">
                CIC Report
            </td>
            <td>
                ${offering.cicReportPath}
                <br/>
                    <input type='file' name="cic-report" />
            </td>
        </tr>
        </sec:authorize>
        <sec:authorize ifAnyGranted="ROLE_CC, ROLE_ADMIN">
            <tr>
                <td class="title-col">
                    Course Coordinator Report
                </td>
                <td>
                        ${offering.ccReportPath} <br/>
                    <input type='file' name="course-coordinator-report" />
                </td>
            </tr>
        </sec:authorize>

    </table>
    <input type='submit' class="btn btn-default fat-btn blue-hover" id="submit" value='Submit'/>
</form:form>

<script type="text/javascript">
    $("option[value=${offering.course.id}]").prop("selected",true)
    $("option[value=${instructor.username}]").prop("selected",true)

    $("#edit-cancel").click(function (event) {
        $("#offering-home").load("/courses/offerings/" + event.currentTarget.id);
    });
    $("#submit").click(function(){
        $("#course-home" ).load( "/courses/view-offering" );
    });
</script>