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
                        <th>Description</th>
                        <th>Department</th>
                        <th></th>
                    </tr>
                    <form>
                        <tr id="header-form">
                            <td><input type='text' required name="description" class="fat" placeholder="Description">
                            </td>
                            <td>
                                <select required name="department">
                                    <option value="CSE">Computer Science</option>
                                    <option value="ISE">Information Systems</option>
                                </select>
                            </td>

                            <td>
                                <input type='submit' class="fat btn btn-primary" value='Add Program'/>
                            </td>
                        </tr>
                    </form>
                    <c:forEach var="i" begin="0" end="23" step="1">
                        <tr>
                            <td>Bachelor of Science in Computer Science</td>
                            <td>Computer Science</td>
                            <td>
                                <input type='submit' class="edit-program fat btn btn-primary" value='Edit Program'/>
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
    $(".edit-program").click(function () {
        window.location = "/programs/edit";
    })
</script>

</body>
</html>