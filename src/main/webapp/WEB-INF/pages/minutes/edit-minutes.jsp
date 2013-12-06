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
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Minutes</title>

    <meta name="author" content="Monika Tuchowska, Jason Chen, Yun Peng, Qiang He"/>
    <jsp:include page="../pagefrags/imports.jsp"/>
</head>
<body>
<div class="container">

    <jsp:include page="../pagefrags/nav.jsp"/>

    <div class="row maincontent">

        <jsp:include page="../pagefrags/bread.jsp"/>

        <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
        <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

        <div class="col-md-12 col-lg-12">
            <p>

            <h1>Edit Minutes</h1> &nbsp;&nbsp;<a id="cancel" href="/minutes">Cancel</a> &nbsp;&nbsp;<a id="delete" style="color:red" href="/minutes/${minutes.id}/delete">Delete</a>
            </p>
            <form method="post">
                <table class="table table-bordered table-striped">
                    <tr>
                        <td class="title-col">Date</td>
                        <td>
                            <spring:bind path="minutes.date">
                                <select name="month" id="month">
                                    <%--<option disabled value="month" selected="selected">Month</option>--%>
                                    <c:forEach var="i" begin="1" end="12" step="1">
                                        <option value="${i}">${i}</option>
                                    </c:forEach>
                                </select>
                                /
                                <select name="day" id="day">
                                    <%--<option disabled value="day" selected="selected">Day</option>--%>
                                    <c:forEach var="i" begin="1" end="31" step="1">
                                        <option value="${i}">${i}</option>
                                    </c:forEach>
                                </select>
                                /
                                <select name="year" id="year">
                                    <%--<option disabled value="year" selected="selected">Year</option>--%>
                                    <c:forEach var="i" begin="0" end="23" step="1">
                                        <option value="${2013-i}">${2013-i}</option>
                                    </c:forEach>
                                </select>
                            </spring:bind>
                        </td>
                    </tr>
                    <tr>
                        <td class="title-col">Group</td>
                        <td>
                            <spring:bind path="minutes.groups">
                                <input required type="text" name="group" value="${minutes.groups}"/>
                            </spring:bind>
                        </td>
                    </tr>
                    <tr>
                        <td class="title-col">Minutes</td>
                        <td>
                            Current file: <a href="#">Minutes</a>
                            <input type="file" name="minutes"></td>
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
    $("select[name=day]").val("${minutes.date.date}");
    $("select[name=month]").val("${1+minutes.date.month}");
    $("select[name=year]").val("${1900+minutes.date.year}");
</script>

</body>
</html>