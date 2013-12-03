<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title><fmt:message key="title"/> | <fmt:message key="title.courses"/></title>

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

            <h1>Walter White</h1>

            &nbsp;&nbsp;<a id="edit-course" href="#">Cancel</a>

            </p>
            <form>
                <table class="table table-bordered table-striped">

                    <tr>
                        <td class="title-col">Full Name</td>
                        <td><input required type="text" name="first-name" value="Walter"/>
                            <input required type="text" name="last-name" value="White"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="title-col">Username</td>
                        <td> <input required type="text" name="username" value="wwhite"/></td>
                    </tr>
                    <tr>
                        <td class="title-col">Email</td>
                        <td> <input required type="text" name="email" value="heisenberg@sbu"/></td>
                    </tr>
                    <tr>
                        <td class="title-col">Roles</td>
                        <td>
                            <input type="checkbox" name="role" value="Admin">Admin<br/>
                            <input type="checkbox" name="role" value="CIC">CIC Member<br/>
                            <input type="checkbox" name="role" value="Course-Coordinator">Course Coordinator <br/>
                            <input type="checkbox" name="role" value="Evaluator">Evaluator<br/>
                            <input type="checkbox" name="role" value="Instructor">Instructor
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
    var checkboxes = $("input[type='checkbox']");
    $("input[type='submit']").attr("disabled", !checkboxes.is(":checked"));

    checkboxes.click(function() {
        $("input[type='submit']").attr("disabled", !checkboxes.is(":checked"));
    });

</script>