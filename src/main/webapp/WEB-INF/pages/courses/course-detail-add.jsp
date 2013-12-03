<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<p>

<h1>Add Course</h1>

<h1><span class="glyphicon glyphicon-circle-arrow-left  link close-col pull-right"></span> </h1>

</p>
<form method="post" action="/courses/add-course/submit">
    <table class="table table-bordered table-striped">

        <tr>
            <td class="title-col">Course Identifier</td>
            <td>
                <spring:bind path="course.id">
                    <input required type="text" class="fat" name="${status.expression}" onclick="this.select()" placeholder="Enter course identifier">
                </spring:bind>
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Course Name
            </td>
            <td>
                <spring:bind path="course.name">
                    <input required type="text" class="fat" name="${status.expression}" onclick="this.select()" placeholder="Enter course name">
                </spring:bind>
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Course Coordinator
            </td>
            <td>
                <form:select path="course.courseCoordinator" class="fat" required="required">
                    <option disabled value="select-cc" selected="selected">Select Course Coordinator</option>
                        <c:if test="${not empty allCourseCoordinator}">
                            <c:forEach var="cc" items="${allCourseCoordinator}">
                                <option value="${cc.username}">${cc.firstName} ${cc.lastName}</option>
                            </c:forEach>
                        </c:if>
                </form:select>
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Alternate Course Coordinators:
            </td>
            <td>
                <form:select path="course.alternateCourseCoordinator" class="fat" required="required">
                    <option disabled name="alterCourseCoordinator" value="select-alt-cc" selected="selected">Select Alternate Course Coordinator</option>
                        <c:if test="${not empty allCourseCoordinator}">
                            <c:forEach var="cc" items="${allCourseCoordinator}">
                                <option value="${cc.username}">${cc.firstName} ${cc.lastName}</option>
                            </c:forEach>
                        </c:if>
                </form:select>

            </td>
        </tr>
        <tr>
            <td class="title-col">
                Degree Programs
            </td>
            <td>
                <spring:bind path="course.degreeprograms">
                    <select multiple name="degrees">
                        <c:forEach var="degree" items="${degreePrograms}">
                            <option value="${degree.id}">${degree.department}</option>
                        </c:forEach>
                    </select>
                </spring:bind>
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Course Outcomes:
            </td>
            <td>
                <p><textarea class="fat" placeholder="Course outcome #1"></textarea>
                </p>
                <p><textarea class="fat" placeholder="Course outcome #2"></textarea>
                </p>
                <p>
                    <textarea class="fat" placeholder="Course outcome #3"></textarea>
                </p>
            </td>
        </tr>
    </table>
    <input type='submit' class="btn btn-default fat-btn blue-hover" id="submit" value='Submit'/>
</form>
<script type="text/javascript">

    $(".close-col").click(function(){
        $(".sidebar").switchClass( "col-md-3", "col-md-12", 200, "easeInOutQuad" );
        $(".sidebar").addClass("col-sm-12");
        $(".sidebar").removeClass("col-sm-3");
        $(".course-desc").show();
        $("#course-home").html("");
        smallToggled=false;
    } );
</script>