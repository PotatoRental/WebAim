<%--
  Created by IntelliJ IDEA.
  User: Polak
  Date: 12/2/13
  Time: 12:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title><fmt:message key="title"/> | <fmt:message key="title.courses"/></title>

    <meta name="author" content="Monika Tuchowska, Jason Chen, Yun Peng, Alvin Qiang"/>
    <jsp:include page="../pagefrags/imports.jsp"/>
</head>
<body>
<div class="container">

    <jsp:include page="../pagefrags/nav.jsp"/>

    <div class="row maincontent">

        <jsp:include page="../pagefrags/bread.jsp"/>

        <div class="col-md-12 col-lg-12">
            <p>
              <h1>Edit Survey</h1> &nbsp;&nbsp;<a id="cancel" href="/surveys">Cancel</a>
            </p>
            <form method="POST">
                <table class="table table-bordered table-striped">
                    <tr>
                        <td class="title-col">Degree Program</td>
                        <td>
                            <spring:bind path="survey.degreeprograms">
                                <select multiple name="degrees">
                                    <c:forEach var="degree" items="${degreePrograms}">
                                        <option value="${degree.id}"
                                                <c:forEach var="surveyDegree" items="${survey.degreeprograms}">
                                                    <c:if test="${degree.id eq surveyDegree.id}">
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
                        <td class="title-col">Group</td>
                        <td>
                           <spring:bind path="survey.groups">
                               <input required type="text" name="${status.expression}" value="${survey.groups}" placeholder="Group"/>
                           </spring:bind>
                        </td>
                    </tr>
                    <tr>
                        <td class="title-col">Initiator</td>
                        <td>
                            <spring:bind path="survey.initiator">
                                <input required type="text" name="${status.expression}" value="${survey.initiator}" placeholder="Initiator"/>
                            </spring:bind>
                        </td>
                    </tr>
                    <tr>
                        <td class="title-col">Semester</td>
                        <td>
                            <spring:bind path="survey.semester">
                                <select name="semester">
                                    <option value="FALL" <c:if test="${semester eq 'FALL'}">selected="selected" </c:if>>FALL</option>
                                    <option value="SPRING" <c:if test="${semester eq 'SPRING'}">selected="selected" </c:if>>SPRING</option>
                                </select>
                            </spring:bind>
                            <spring:bind path="survey.semester">
                                <select name="semester">
                                    <c:forEach var="i" begin="0" end="22" step="1">
                                        <option value="${2013-i}" <c:if test="${2013-i eq year}">selected="selected"</c:if>>${2013-i}</option>
                                    </c:forEach>
                                </select>
                            </spring:bind>

                        </td>
                    </tr>
                    <tr>
                        <td class="title-col">Results</td>
                        <td>Current file: <a href="/${survey.resultPath}">Results</a><br/>
                            <input type="file" name="results"></td>
                    </tr>

                </table>
                <input type="submit" class="btn btn-default fat-btn blue-hover" value="Submit"/>
            </form>

        </div>
    </div>

    <jsp:include page="../pagefrags/footer.jsp"/>
</div>

<script type="text/javascript">

</script>