<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title><fmt:message key="title"/> | Manage Student Outcomes</title>

    <meta name="author" content="Monika Tuchowska, Jason Chen, Yun Peng, Alvin Qiang"/>
    <jsp:include page="../pagefrags/imports.jsp"/>
</head>
<body>
<div class="container">

    <jsp:include page="../pagefrags/nav.jsp"/>

    <div class="row maincontent">

        <jsp:include page="../pagefrags/bread.jsp"/>
        <c:if test="${not empty minutesMessage}">
            <h2 class="error">${minutesMessage}</h2>
        </c:if>

        <div class="col-md-12 col-sm-12">
            <div>
                <table class="table table-striped">
                    <tr>
                        <th>Date</th>
                        <th>Group</th>
                        <th>Degree Program</th>
                        <th>Results</th>
                        <sec:authorize ifNotGranted="ROLE_EVAL"><th></th> </sec:authorize>
                    </tr>
                    <sec:authorize ifNotGranted="ROLE_EVAL">
                    <form:form method="post" commandName="minutes">
                        <tr id="header-form">
                            <td style="width:210px">
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
                            </td>
                            <td><input type='text' required name="group" class="fat" placeholder="group"></td>
                            <td></td>
                            <td><input type="file" name="minutes"></td>
                            <td>
                                <input type='submit' class="fat btn btn-default blue-hover" value='Add'/>
                            </td>
                        </tr>
                    </form:form>
                    </sec:authorize>
                    <c:forEach items="${minuteslist}" var="min">
                        <tr>
                            <td>
                                    ${1+min.date.month} / ${min.date.date} / ${1900+min.date.year}
                            </td>
                            <td>${min.groups}</td>
                            <td>${min.degreeProgram.id}</td>
                            <td>${min.filePath}</td>

                            <sec:authorize ifNotGranted="ROLE_EVAL">
                            <td>
                                <button id="${min.id}" class="edit-minutes fat btn btn-primary">Edit Minutes</button>
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
    $(".edit-minutes").click(function () {
        window.location = "/minutes/"+$(this).attr("id");
    })
</script>

</body>
</html>