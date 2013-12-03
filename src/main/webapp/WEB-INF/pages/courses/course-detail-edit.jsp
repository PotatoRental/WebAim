<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<p>

<h1>${course.id}</h1>
<sec:authorize ifAnyGranted="ROLE_ADMIN, ROLE_CIC">
    &nbsp;&nbsp;<a id="edit-cancel" href="#">Cancel</a>
</sec:authorize>
</p>
<form method="post" action="/courses/${course.id}/submit">
<table class="table table-bordered table-striped">

        <tr>
            <td class="title-col">Course Identifier</td>
            <td>
                <spring:bind path="course.id">
                    <input type="text" class="fat" onclick="this.select()" name="${status.expression}" value="${status.value}"><br />
                </spring:bind>
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Course Name
            </td>
            <td>
                <spring:bind path="course.name">
                    <input type="text" class="fat" onclick="this.select()" name="${status.expression}" value="${status.value}"><br />
                </spring:bind>
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Course Coordinator
            </td>
            <td>
                <form:select cssClass="fat" path="course.courseCoordinator">
                    <c:forEach var="cc" items="${allCourseCoordinator}">
                        <option value="${cc.username}"
                        <c:if test="${cc.username eq course.courseCoordinator.username}">
                            selected="selected"
                        </c:if>>
                        ${cc.firstName} ${cc.lastName}</option>
                        <%--<form:option value="${cc.username}">${cc.firstName} ${cc.lastName}</form:option>--%>
                    </c:forEach>
                </form:select>
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Alternate Course Coordinators:
            </td>
            <td>
                <form:select cssClass="fat" path="course.alternateCourseCoordinator">
                    <c:forEach var="cc" items="${allCourseCoordinator}">
                        <form:option value="${cc.username}">${cc.firstName} ${cc.lastName}</form:option>
                    </c:forEach>
                </form:select>
            </td>
        </tr>
        <tr>
            <td class="title-col">
                Degree Programs
            </td>
            <td>
                <spring:bind path="course.degreePrograms">
                    <select multiple>
                        <c:forEach var="degree" items="${degreePrograms}">
                            <option value="${degree.id}"
                                    <c:forEach var="courseDegree" items="${course.degreeprograms}">
                                        <c:if test="${degree.id eq courseDegree.id}">
                                            selected="selected"
                                        </c:if>
                                    </c:forEach>
                                    >${degree.department}</option>
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
                <c:forEach var="outcome" items="${course.courseOutcomes}">
                    <p><textarea class="fat">${outcome.description}</textarea></p>
                </c:forEach>

                <%--<p><textarea class="fat">Develop the students ability to create Web pages using validated XHTML standards.</textarea>--%>
                    <%--</p>--%>
                <%--<p><textarea class="fat">Introduce the students to the use of Cascading Style Sheets for formatting the presentation of Web pages, and the principles of what makes good Web page style.</textarea>--%>
                <%--</p>--%>
                <%--<p>--%>
                    <%--<textarea class="fat">Introduce the students to effective page layout principles and the use of CSS positioning for effective Web page layout.</textarea>--%>
                <%--</p>--%>
                <%--<p>--%>
                    <%--<textarea class="fat">Introduce the students to WYSIWYG tools for creating well designed and organized Web sites.</textarea>--%>
                <%--</p>--%>

            </td>
        </tr>
        <tr>
            <td class="title-col">
                Course Offerings
            </td>
            <td>
                <a href="#">View Course Offerings</a>
            </td>
        </tr>

</table>
    <input type='submit' class="btn btn-default fat-btn blue-hover" id="submit" value='Submit'/>
</form>
<script type="text/javascript">
    $("#edit-cancel").click(function(){
        $( "#course-home" ).load( "/courses/${course.id}" );
    });
</script>