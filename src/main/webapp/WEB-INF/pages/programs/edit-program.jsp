<%--
  Created by IntelliJ IDEA.
  User: Polak
  Date: 12/3/13
  Time: 11:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title><fmt:message key="title"/> | Edit Degree Program</title>

    <meta name="author" content="Monika Tuchowska, Jason Chen, Yun Peng, Qiang He"/>
    <jsp:include page="../pagefrags/imports.jsp"/>
</head>
<body>
<div class="container">

    <jsp:include page="../pagefrags/nav.jsp"/>

    <div class="row maincontent">

        <jsp:include page="../pagefrags/bread.jsp"/>


        <div class="col-md-12 col-lg-12">
            <p>
              <h1>Edit Degree Program</h1>
            </p>
            <form:form method="post" commandName="modifyProgram">
                <table class="table table-bordered table-striped">
                    <tr>
                        <td class="title-col">Department</td>
                        <td>
                            <select required name="department">
                                <option value="cse">Computer Science</option>
                                <option value="ise">Information Systems</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="title-col">Description</td>
                        <td>
                                                   <form:textarea cssClass="description" name="description" required="required" class="fat" path="description" />
                        </td>
                    </tr>
                    <tr>
                        <td class="title-col">PEOs</td>
                        <td><select multiple name="peo">
                            <c:forEach items="${peos}" var="peo">
                                <option value="${peo.id}">${peo.shortName}</option>
                            </c:forEach>
                        </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="title-col">Student Outcomes</td>
                        <td><select multiple name="student-outcomes">
                            <c:forEach items="${studentoutcomes}" var="outcome">
                                <option value="${outcome.id}">${outcome.shortName}</option>
                            </c:forEach>
                        </select>
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
$('.description').val(${modifyProgram.description});
</script>