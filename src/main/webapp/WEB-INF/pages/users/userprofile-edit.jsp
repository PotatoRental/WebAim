<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title><fmt:message key="title"/> | Edit User</title>

    <meta name="author" content="Monika Tuchowska, Jason Chen, Yun Peng, Alvin Qiang"/>
    <jsp:include page="../pagefrags/imports.jsp"/>
</head>
<body>
<div class="container">

    <jsp:include page="../pagefrags/nav.jsp"/>

    <div class="row maincontent">

        <jsp:include page="../pagefrags/bread.jsp"/>

        <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

        <div class="col-md-12 col-lg-12">
            <p>

            <h1>Edit User: ${user.firstName} ${user.lastName}</h1>

            &nbsp;&nbsp;<a id="cancel" href="#" onclick="window.history.back()">Cancel</a>

            </p>
            <form>
                <table class="table table-bordered table-striped">
                    <tr>
                        <td class="title-col">Full Name</td>
                        <td><input type='text' required name="first-name"  value="${user.firstName}">
                            <input type='text' required name="last-name"  value="${user.lastName}">
                        </td>
                    </tr>
                    <tr>
                        <td class="title-col">Username</td>
                        <td><input type='text' required name="username"  value="${user.username}"></td>
                    </tr>
                    <tr>
                        <td class="title-col">Email</td>
                        <td><input type='text' required name="email"  value="${user.email}"></td>
                    </tr>
                    <tr>
                        <td class="title-col">Roles</td>
                        <td>
                            <ul class="list-unstyled">
                                <input type="checkbox" name="role" value="ROLE_ADMIN">Admin<br/>
                                <input type="checkbox" name="role" value="ROLE_CIC">CIC Member<br/>
                                <input type="checkbox" name="role" value="ROLE_CC">Course Coordinator <br/>
                                <input type="checkbox" name="role" value="ROLE_EVAL">Evaluator<br/>
                                <input type="checkbox" name="role" value="ROLE_INSTR">Instructor
                            </ul>
                        </td>

                    </tr>
                    <tr>
                        <td class="title-col">Evaluation Period</td>
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
                    </tr>

                </table>
                <input type='submit' class="fat btn btn-primary" value='Submit Changes'/>
            </form>

        </div>
    </div>

    <jsp:include page="../pagefrags/footer.jsp"/>
</div>

<script type="text/javascript">
    <c:forEach var="role" items ="${user.roles}">
        $("input[value=${role.role}]").prop('checked', true);
    </c:forEach>


   // alert($("input[value=ROLE_EVAL]").is(":checked"))  ;
    $("input[value=ROLE_EVAL]").change(function(){

        $(".eval").attr("disabled", !$("input[value=ROLE_EVAL]").is(":checked"));
    })


</script>