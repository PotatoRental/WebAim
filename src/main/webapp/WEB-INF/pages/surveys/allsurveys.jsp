<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


        <div class="col-md-12 col-sm-12">

            <div>
                <h2>Manage Surveys</h2>
                <table class="table table-striped">
                    <tr>
                        <th>Degree Program</th>
                        <th>Group</th>
                        <th>Initiator</th>
                        <th>Semester</th>
                        <th>Results</th>
                        <th></th>
                    </tr>
                    <form>
                        <tr id="header-form">
                            <td>
                                <select name="degree-program">
                                    <option value="CSE">Computer Science</option>
                                    <option value="ISE">Information Systems</option>
                                </select>
                            </td>
                            <td><input type='text' required name="group" class="fat" placeholder="Group"></td>
                            <td><input type='text' required name="initiator" class="fat" placeholder="Initiator"></td>
                            <td>
                                <select name="semester" id="semester">
                                    <%--<option disabled value="month" selected="selected">Month</option>--%>

                                        <option value="fall">Fall</option>
                                        <option value="spring">Spring</option>
                                </select>

                                <select name="year" id="year">
                                    <%--<option disabled value="year" selected="selected">Year</option>--%>
                                    <c:forEach var="i" begin="0" end="23" step="1">
                                        <option value="${2013-i}">${2013-i}</option>
                                    </c:forEach>
                                </select>
                            </td>

                            <td><button class="btn btn-default">Select Results File</button></td>
                            <td>
                                <input type='submit' class="fat btn btn-default blue-hover" value='Add Survey'/>
                            </td>
                        </tr>
                    </form>
                    <c:forEach var="i" begin="0" end="23" step="1">
                    <tr>
                        <td>01/01/2001</td>
                        <td>Group Name</td>
                        <td>Initiator</td>
                        <td>Fall 2013</td>
                        <td><a href="#">results.pdf</a></td>

                        <td>
                            <input type='submit' class="fat btn btn-default blue-hover" value='Edit Survey'/>
                        </td>
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