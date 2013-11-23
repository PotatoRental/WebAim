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

        <div class="list col-md-3 col-sm-3" id="list">
            <sec:authorize ifAnyGranted="ROLE_CC">
                <div class="add-btn">
                    Sidebar?
                </div>
                <div class="search-results">
                    <ul>
                        <li><a href="#">CSE 110</a></li>
                        <li><a href="#">CSE 114</a></li>
                        <li><a href="#">CSE 110</a></li>
                        <li><a href="#">CSE 114</a></li>
                    </ul>
                </div>
            </sec:authorize>
        </div>

        <div class="col-md-12 col-sm-12">

            <div>
                <h2>Manage Minutes</h2>
                <table class="table table-striped">
                    <form>
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
                            <td><textarea name="minutes" class="fat" required
                                          placeholder="Enter new minutes here."></textarea></td>
                            <td>
                                <input type='submit' class="fat btn btn-default blue-hover" value='Add'/>
                            </td>
                        </tr>
                    </form>
                    <tr>
                        <td>01/01/2001</td>
                        <td>Group Name</td>
                        <td>
                            An ability to apply knowledge of computing and mathematics appropriate to the discipline
                        </td>
                        <td>
                            <input type='submit' class="fat btn btn-default blue-hover" value='Edit'/>
                        </td>
                    </tr>
                    <tr>
                        <td>01/01/2001</td>
                        <td>Group Name</td>
                        <td> An ability to analyze a problem, and identify and define the computing requirements
                            appropriate to its solution

                        </td>
                        <td>
                            <input type='submit' class="fat btn btn-default blue-hover" value='Edit'/>

                        </td>
                    </tr>
                    <tr>
                        <td>01/01/2001</td>
                        <td>Group Name</td>
                        <td>An ability to design, implement, and evaluate a computer-based system, process, component or
                            program to meet desired needs

                        </td>
                        <td>
                            <input type='submit' class="fat btn btn-default blue-hover" value='Edit'/>
                        </td>
                    </tr>
                    <tr>
                        <td>01/01/2001</td>
                        <td>Group Name</td>
                        <td>An ability to function effectively on teams to accomplish a common goal

                        </td>
                        <td>
                            <input type='submit' class="fat btn btn-default blue-hover" value='Edit'/>
                        </td>
                    </tr>


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