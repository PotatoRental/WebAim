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
                    <c:forEach begin="0" end="20" var="i" step="1">
                        <tr>
                            <td>
                                5/15/2013
                            </td>
                            <td>Group Name</td>
                            <td>
                                An ability to apply knowledge of computing and mathematics appropriate to the discipline
                            </td>
                            <td>
                                <button class="edit-minutes fat btn btn-primary">Edit Minutes</button>
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
    $(".edit-minutes").click(function () {
        window.location = "/minutes/edit-minutes";
    })
</script>

</body>
</html>