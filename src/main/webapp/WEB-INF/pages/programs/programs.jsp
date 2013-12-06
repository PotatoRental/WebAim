<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title><fmt:message key="title"/> | Degree Programs</title>

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
                        <th>Identifier</th>
                        <th>Description</th>
                        <th>Department</th>
                        <th>PEOs</th>
                        <th>Student Outcomes</th>
                        <sec:authorize ifNotGranted=" ROLE_EVAL"><th></th>  </sec:authorize>
                    </tr>
                    <sec:authorize ifNotGranted=" ROLE_EVAL">
                    <form method="post">
                        <tr id="header-form">
                            <td><input type='text' required name="id" class="fat" placeholder="Identifier">
                            <td><textarea name="description" class="fat" placeholder="Description"></textarea>
                            </td>
                            <td>
                                <select required name="department">
                                    <option value="Computer Science">Computer Science</option>
                                    <option value="Information Systems">Information Systems</option>
                                </select>
                            </td>
                            <td>
                                <select multiple name="peo">
                                    <c:forEach items="${peos}" var="peo">
                                        <option value="${peo.id}">${peo.shortName}</option>
                                    </c:forEach>
                                </select>
                            </td>
                            <td>
                                <select multiple name="student-outcomes">
                                    <c:forEach items="${studentoutcomes}" var="outcome">
                                        <option value="${outcome.id}">${outcome.shortName}</option>
                                    </c:forEach>
                                </select>
                            </td>
                            <td>
                                <input type='submit' class="fat btn btn-primary" value='Add Program'/>
                            </td>
                        </tr>
                    </form>
                    </sec:authorize>

                    <c:forEach items="${degreeprograms}" var="program">
                        <tr>
                            <td>${program.id}</td>
                            <td>${program.description}</td>
                            <td>${program.department}</td>
                            <td>
                                <ul class="list-unstyled">

                                </ul>
                            </td>
                            <td>
                                <ul class="list-unstyled">

                                </ul>
                            </td>
                            <sec:authorize ifNotGranted=" ROLE_EVAL">
                            <td>
                                <input type='submit' id="${program.id}" class="edit-program fat btn btn-primary" style="min-width: 105px"
                                       value='Edit Program'/>
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
    $(".edit-program").click(function () {
        window.location = "/programs/" + $(this).attr("id") + "/edit";
    })
</script>

</body>
</html>