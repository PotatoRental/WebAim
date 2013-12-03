<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title><fmt:message key="title"/> | Student Outcomes</title>

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

                <table class="table table-striped">


                    <tr>
                        <th>#</th>
                        <th>Shortname</th>
                        <th>Description</th>
                        <th>Target Direct<br/> Assessment<br/> Attainment Level</th>
                        <th>Target Survey<br/> Assessment<br/> Attainment Level</th>
                        <th>Validity Period</th>
                        <th>Degree Program</th>
                        <th></th>
                    </tr>

                    <form>
                        <tr id="header-form">
                            <td></td>
                            <td>
                                <input name="shortname" type="text" placeholder="Enter shortname" required/>
                            </td>

                            <td><textarea class="fat" name="description"
                                          placeholder="Enter new description here."></textarea></td>
                            <td>
                                <select required name="target-da-level" id="target-da-level">
                                    <%--<option disabled value="year" selected="selected">Year</option>--%>
                                    <c:forEach var="i" begin="0" end="10" step="1">
                                        <option value="${i}">${i}</option>
                                    </c:forEach>
                                </select>
                            </td>
                            <td>
                                <select required name="target-sa-level" id="target-sa-level">
                                    <%--<option disabled value="year" selected="selected">Year</option>--%>
                                    <c:forEach var="i" begin="0" end="10" step="1">
                                        <option value="${i}">${i}</option>
                                    </c:forEach>
                                </select>
                            </td>
                            <td>
                                <select required name="start-year" id="start-year">
                                    <%--<option disabled value="year" selected="selected">Year</option>--%>
                                    <c:forEach var="i" begin="0" end="23" step="1">
                                        <option value="${2013-i}">${2013-i}</option>
                                    </c:forEach>
                                </select> -
                                <select required name="end-year" id="end-year">
                                    <%--<option disabled value="year" selected="selected">Year</option>--%>
                                    <c:forEach var="i" begin="0" end="23" step="1">
                                        <option value="${2013-i}">${2013-i}</option>
                                    </c:forEach>
                                </select>
                            </td>
                            <td>
                                <select required name="program">
                                    <option value="cse">CSE</option>
                                    <option value="ise">ISE</option>
                                </select>
                            </td>
                            <td><input type='submit' class="fat btn btn-default blue-hover" value='Add'/></td>
                        </tr>
                    </form>
                    <c:forEach items="${studentoutcomes}" var="outcome">
                        <tr>
                            <td>${outcome.sequenceNumber}</td>
                            <td>${outcome.shortName}</td>
                            <td>${outcome.description}</td>
                            <td>${outcome.targetDirectAssessmentAttainmentLevel}</td>
                            <td>${outcome.targetSurveyAssessmentAttainmentLevel}</td>
                            <td>${outcome.validityPeriod}</td>
                            <td>
                                ${outcome.degreeprogram.id}
                            </td>
                            <td><input type='submit' class="fat btn btn-default blue-hover" value='Edit'/></td>
                        </tr>
                    </c:forEach>


                </table>


            </div>

        </div>
    </div>

    <jsp:include page="../pagefrags/footer.jsp"/>
</div>

<script type="text/javascript">

</script>

</body>
</html>