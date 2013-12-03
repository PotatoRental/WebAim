<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<p>

<h1>Add Course</h1>

<h1><span class="glyphicon glyphicon-circle-arrow-left  link close-col pull-right"></span> </h1>

</p>
<form>
    <table class="table table-bordered table-striped">

        <tr>
            <td class="title-col">Course Identifier</td>
            <td><input type="text" class="fat" onclick="this.select()" placeholder="Enter course identifier"></td>
        </tr>
        <tr>
            <td class="title-col">
                Course Name
            </td>
            <td>
                <input type="text" class="fat" onclick="this.select()" placeholder="Enter course name">
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Course Coordinator
            </td>
            <td>
                <select class="fat" required>
                    <option disabled value="select-cc" selected="selected">Select Course Coordinator</option>
                    <c:forEach var="cc" items="${allCourseCoordinator}">
                        <option value="${cc.username}">${cc.firstName} ${cc.lastName}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Alternate Course Coordinators:
            </td>
            <td>
                <select class="fat" required>
                    <option disabled value="select-alt-cc" selected="selected">Select Alternate Course Coordinator</option>
                    <c:forEach var="cc" items="${allCourseCoordinator}">
                        <option value="${cc.username}">${cc.firstName} ${cc.lastName}</option>
                    </c:forEach>
                </select>

            </td>
        </tr>
        <tr>
            <td class="title-col">
                Degree Programs
            </td>
            <td>
                <select class="fat" required>
                    <option disabled value="select-dp" selected="selected">Select Degree Program</option>
                    <option value="cse">Computer Science</option>
                    <option value="ise">Information Systems</option>
                </select>
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