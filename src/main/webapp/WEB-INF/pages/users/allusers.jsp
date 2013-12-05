<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title><fmt:message key="title"/> | <fmt:message key="title.users"/></title>
    <meta name="author" content="Monika Tuchowska, Jason Chen, Yun Peng, Alvin Qiang"/>
    <jsp:include page="../pagefrags/imports.jsp"/>
</head>
<body>
<div class="container">

    <jsp:include page="../pagefrags/nav.jsp"/>

    <div class="row maincontent">

        <jsp:include page="../pagefrags/bread.jsp"/>

        <div class="col-md-12 col-sm-12">
            <table class="table table-striped">
                <tr>
                    <th>Full Name</th>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Roles</th>
                    <th>Evaluation Period</th></t>
                    <th></th>

                </tr>


                <form:form method="post" commandName="newUser">
                    <tr id="header-form">
                        <td><form:input type='text' required="required" name="first-name" class="fat" placeholder="First Name" path="firstName"/><br/>
                            <form:input type='text' required="required" name="last-name" class="fat" placeholder="Last Name" path="lastName"/>
                        </td>
                        <td><form:input type='text' required="required" name="username" class="fat" placeholder="Username" path="username"/> <br/>
                            <form:input type='text' required="required" name="password" class="fat" placeholder="Password" path="password"/></td>
                        <td><form:input type='text' required="required" name="email" class="fat" placeholder="Email Address" path="email"/></td>
                        <td>
                            <input type="checkbox" name="role" value="ROLE_ADMIN">Admin<br/>
                            <input type="checkbox" name="role" value="ROLE_CIC">CIC Member<br/>
                            <input type="checkbox" name="role" value="ROLE_CC">Course Coordinator <br/>
                            <input type="checkbox" name="role" value="ROLE_EVAL">Evaluator<br/>
                            <input type="checkbox" name="role" value="ROLE_INSTR">Instructor
                        </td>
                        <td>
                            <select class="eval" required name="start-year" id="start-year">
                                <%--<option disabled value="year" selected="selected">Year</option>--%>
                                <c:forEach var="i" begin="0" end="23" step="1">
                                    <option value="${2013-i}">${2013-i}</option>
                                </c:forEach>
                            </select> -
                            <select class="eval" required name="end-year" id="end-year">
                                <%--<option disabled value="year" selected="selected">Year</option>--%>
                                <c:forEach var="i" begin="0" end="23" step="1">
                                    <option value="${2013-i}">${2013-i}</option>
                                </c:forEach>
                            </select>
                        </td>

                        <td>
                            <input type='submit' class="fat btn btn-primary" value='Add User'/>
                        </td>

                    </tr>
                </form:form>


                <c:forEach var="user" items="${userlist}">
                    <tr>
                        <td><a href="/users/${user.username}">${user.firstName} ${user.lastName}</a></td>
                        <td>${user.username}</td>
                        <td>${user.email}</td>
                        <td>

                            <ul class="list-unstyled">
                                <c:forEach var="role" items="${user.roles}">
                                    <li>${role.role}</li>
                                </c:forEach>
                            </ul>

                        </td>
                        <td>N/A</td>

                        <td>
                            <button id="${user.username}" class="edit-user fat btn btn-primary">Edit User</button>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>

    </div>

    <jsp:include page="../pagefrags/footer.jsp"/>
</div>

</div>

<script type="text/javascript">
    $(".eval").attr("disabled", !$("input[value=ROLE_EVAL]").is(":checked"));

    $(".edit-user").click(function () {
        window.location = "/users/" + $(this).attr("id") + "/edit";
    });

    $("input[value=ROLE_EVAL]").change(function(){

        $(".eval").attr("disabled", !$("input[value=ROLE_EVAL]").is(":checked"));
    })

    var checkboxes = $("input[type='checkbox']");
    $("input[type='submit']").attr("disabled", !checkboxes.is(":checked"));

    checkboxes.click(function () {
        $("input[type='submit']").attr("disabled", !checkboxes.is(":checked"));
    });

</script>
</body>
</html>