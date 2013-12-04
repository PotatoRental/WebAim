<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title><fmt:message key="title"/> | PEOs</title>

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
                        <th>Target Attainment</th>
                        <th>Validity Period</th>
                        <th>Degree Program</th>
                        <th></th>
                    </tr>
                    <form>
                        <tr id="header-form">
                            <th></th>
                            <td><input required type='text' required name="shortname" class="fat"
                                       placeholder="Shortname"></td>
                            <td><textarea required name="description" class="fat" placeholder="Description"></textarea></td>
                            <td>
                                <select name="target-attainment">
                                    <c:forEach var="i" begin="0" end="10" step="1">
                                        <option value="${10-i}">${10-i}</option>
                                    </c:forEach>
                                </select>

                            </td>
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
                            <td>
                                <select multiple required name="degree-program">
                                    <c:forEach items="${degreeprograms}" var="program">
                                        <option value="${program.id}">${program.id}</option>
                                    </c:forEach>
                                </select>
                            </td>

                            <td>
                                <input type='submit' class="fat btn btn-primary" value='Add PEO'/>
                            </td>
                        </tr>
                    </form>
                    <c:forEach items="${peos}" var="peo">
                        <tr>
                            <td>${peo.sequenceNumber}</td>
                            <td>${peo.shortName}</td>
                            <td>${peo.description}</td>
                            <td>${peo.targetAttainment}</td>
                            <td>${peo.validityPeriod}</td>
                            <td>${peo.degreeprogram.id}</td>

                            <td>
                                <button id="${peo.id}" type='submit' class="edit-peo fat btn btn-primary">Edit PEO</button>
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
         $(".edit-peo").click(function(){
             window.location = "/peo/"+$(this).attr("id")+"/edit";
         })
</script>

</body>
</html>