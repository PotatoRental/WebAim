<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title><fmt:message key="title"/> | Manage Surveys</title>

    <meta name="author" content="Monika Tuchowska, Jason Chen, Yun Peng, Alvin Qiang"/>
    <jsp:include page="../pagefrags/imports.jsp"/>
</head>
<body>
<div class="container">


    <jsp:include page="../pagefrags/nav.jsp"/>

    <div class="row maincontent">


        <jsp:include page="../pagefrags/bread.jsp"/>


        <div class="col-md-12 col-sm-12">

            <div>
                <c:if test="${not empty surveyMessage}">
                    <h2 class="error">${surveyMessage}</h2>
                </c:if>

                <table class="table table-striped">
                    <tr>
                        <th>Degree Program</th>
                        <th>Group</th>
                        <th>Initiator</th>
                        <th>Semester</th>
                        <th>Results</th>
                        <th>PEO Attainment Levels</th>
                        <sec:authorize ifNotGranted=" ROLE_EVAL"><th></th> </sec:authorize>
                    </tr>

                    <sec:authorize ifNotGranted=" ROLE_EVAL">
                    <form method="post">
                        <tr id="header-form">
                            <td>
                                <spring:bind path="addSurvey.degreeprograms">
                                    <select multiple name="degrees">
                                        <c:forEach var="degree" items="${allDegreePrograms}">
                                            <option value="${degree.id}">${degree.department}</option>
                                        </c:forEach>
                                    </select>
                                </spring:bind>
                            </td>
                            <td><spring:bind path="addSurvey.groups"><input type='text' required name="groups" class="fat" placeholder="Group"></spring:bind></td>
                            <td><spring:bind path="addSurvey.initiator"><input type='text' required name="initiator" class="fat" placeholder="Initiator"></spring:bind></td>
                            <td>
                                <spring:bind path="addSurvey.semester">
                                    <select required name="semester" id="semester">
                                        <%--<option disabled value="month" selected="selected">Month</option>--%>
                                        <option disabled value="select-cc" selected="selected">Season</option>
                                        <option value="FALL">Fall</option>
                                        <option value="SPRING">Spring</option>
                                    </select>
                                </spring:bind>
                                <spring:bind path="addSurvey.semester">
                                    <select required name="semester" id="year">
                                        <option disabled value="select-cc" selected="selected">Year</option>
                                        <c:forEach var="i" begin="0" end="23" step="1">
                                            <option value="${2013-i}">${2013-i}</option>
                                        </c:forEach>
                                    </select>
                                </spring:bind>
                            </td>

                            <td>
                                <input required type="file" name="results">
                            </td>
                            <td>
                                <select name="attainment-level">
                                    <c:forEach var="i" begin="0" end="10" step="1">
                                        <option value="${10-i}">${10-i}</option>
                                    </c:forEach>
                                </select>
                            </td>

                            <td>
                                <input type='submit' class="fat btn btn-primary" value='Add Survey'/>
                            </td>
                        </tr>
                    </form>
                    </sec:authorize>
                    <c:forEach items="${surveys}" var="survey">
                        <tr>
                            <td>
                                <ul class="list-unstyled">
                                    <c:forEach var="degree" items="${survey.degreeprograms}">
                                        <li>${degree.department} </li>
                                    </c:forEach>
                                </ul>
                            </td>
                            <td>${survey.groups}</td>
                            <td>${survey.initiator}</td>
                            <td>${survey.semester} </td>
                            <td><a href="/${survey.resultPath}">Results</a></td>
                            <td></td>
                            <sec:authorize ifNotGranted=" ROLE_EVAL">
                            <td>
                                <button type='submit' id="${survey.id}" class="edit-survey fat btn btn-primary">Edit Survey</button>
                            </td>
                            </sec:authorize>
                        </tr>
                    </c:forEach>


                </table>

            </div>

        </div>
    </div>

    <jsp:include page="../pagefrags/footer.jsp"/>
</div>


<script type="text/javascript">
    $(".edit-survey").click(function (event) {
        window.location = "/surveys/" + event.currentTarget.id;
    })
</script>

</body>
</html>