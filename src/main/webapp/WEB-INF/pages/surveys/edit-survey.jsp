<%--
  Created by IntelliJ IDEA.
  User: Polak
  Date: 12/2/13
  Time: 12:26 AM
  To change this template use File | Settings | File Templates.
--%>
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
              <h1>Edit Survey</h1>
            </p>
            <form>
                <table class="table table-bordered table-striped">
                    <tr>
                        <td class="title-col">Degree Program</td>
                        <td>
                            <select multiple aname="degree-program">
                                <option value="Computer Science">Computer Science</option>
                                <option value="Computer Science">Information Systems</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="title-col">Group</td>
                       <td>
                           <input required type="text" name="group" placeholder="Group"/>
                       </td>
                    </tr>
                    <tr>
                        <td class="title-col">Initiator</td>
                        <td>
                            <input required type="text" name="group" placeholder="Initiator"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="title-col">Semester</td>
                        <td>
                            <select name="semester">
                                <option value="fall">Fall</option>
                                <option value="spring">Spring</option>
                            </select>
                            <select name="year">
                                <c:forEach var="i" begin="0" end="22" step="1">
                                    <option value="${2013-ii}">${2013-i}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="title-col">Results</td>
                        <td><textarea required name="results" class="fat"></textarea></td>
                    </tr>

                </table>
                <input type="submit" class="btn btn-default fat-btn blue-hover" value="Submit"/>
            </form>

        </div>
    </div>

    <jsp:include page="../pagefrags/footer.jsp"/>
</div>

<script type="text/javascript">

</script>