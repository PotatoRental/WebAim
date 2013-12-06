<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table class="tabulate table table-bordered table-striped">
    <thead>
    <tr>
        <th><input type="checkbox" id="select-all"></th>

        <th>Course</th>
        <th>Section</th>
        <th>Semester</th>
        <th>Instructor</th>
        <th>Missing Info</th>
    </tr>
    <c:forEach items="${courseofferings}" var="offering">
        <tr>
            <td><input type="checkbox"></td>

            <td>${offering.course.id}</td>
            <td>${offering.section}</td>
            <td>${offering.semester}</td>
            <td>${offering.instructor.firstName} ${offering.instructor.lastName}</td>
            <td>
                <c:if test="${role == 'ROLE_INSTR'}">
                    <ul class="list-unstyled">
                        <c:if test="${empty offering.syllabusPath}"><li>Syllabus</li></c:if>

                        <c:if test="${empty offering.schedulePath}"><li>Schedule</li></c:if>

                        <c:if test="${empty offering.eosReportPath}"><li>End of Semester Report</li></c:if>
                    </ul>
                </c:if>
                <c:if test="${role == 'ROLE_CIC'}">
                    <c:if test="${empty offering.cicReportPath}">CIC Report</c:if>
                </c:if>
                <c:if test="${role == 'ROLE_CC'}">
                    <c:if test="${empty offering.ccReportPath}">Course Coordinator Report</c:if>
                        </c:if>
            </td>
        </tr>
    </c:forEach>
    </thead>
    <tbody>


    </tbody>
</table>


<script type="text/javascript">
    $("#select-all").click(function(){
        $(this).closest('table').find(':checkbox').prop('checked', this.checked);
    });
</script>