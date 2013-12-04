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
    <title><fmt:message key="title"/> | Edit Peo</title>

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

            <h1>Edit Peo</h1> &nbsp;&nbsp;<a id="cancel" href="#" onclick="window.history.back()">Cancel</a>
            </p>


            <form method="POST">
                <table class="table table-bordered table-striped">
                    <tr>

                        <td class="title-col">Shortname</td>
                        <td>

                            <input required type="text" name="shortname" value="${peo.shortName}"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="title-col">Description</td>
                        <td>
                            <textarea class="fat" name="description" required>${peo.description}</textarea>
                        </td>
                    </tr>
                    <tr>
                        <td class="title-col">Target Attainment</td>
                        <td>
                            <select name="target-attainment">
                                <c:forEach var="i" begin="0" end="10" step="1">
                                    <option value="${10-i}">${10-i}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="title-col">Validity Period</td>
                        <td>
                            <select required name="start-year" id="start-year">
                                <%--<option disabled value="year" selected="selected">Year</option>--%>
                                <c:forEach var="i" begin="0" end="23" step="1">
                                    <option value="${2014-i}">${2014-i}</option>
                                </c:forEach>
                            </select> -
                            <select required name="end-year" id="end-year">
                                <%--<option disabled value="year" selected="selected">Year</option>--%>
                                <c:forEach var="i" begin="0" end="23" step="1">
                                    <option value="${2014-i}">${2014-i}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="title-col">Degree Program</td>
                        <td>
                            <select multiple required name="degree-program">
                                <c:forEach items="${degreeprograms}" var="program">
                                    <option value="${program.id}">${program.id}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>

                </table>
                <input type="submit" class="btn btn-default fat-btn blue-hover" value="Submit"/>
            </form>

        </div>
    </div>

    <jsp:include page="../pagefrags/footer.jsp"/>
</div>

<script type="text/javascript">
    var validityPeriod = "${peo.validityPeriod}";
    var split = validityPeriod.split("-");

    $("select[name=start-year]").val(split[0]);
    $("select[name=end-year]").val(split[1]);
    $("select[name=degree-program]").val("${peo.degreeprogram.id}");
    $("select[name=target-attainment]").val("${peo.targetAttainment}");

</script>