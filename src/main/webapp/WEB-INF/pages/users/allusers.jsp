<%--
  User: milky
  Date: 10/18/13
  Time: 1:56 PM
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

        <div class="col-md-4 col-sm-4 searchbar" id="searchbar">
            <div class="row">

                <span id="search-ico" class="glyphicon glyphicon-search"></span>
                <input type="text" id="searchfield" value="Search Courses" onclick="this.value=''">
            </div>
            <!-- /input-group -->

            <div class="search-results">
                <ul>
                    <li><a href="#">Gale Boetticher <span class="label label-info">Course Coord.</span></a></li>
                    <li><a href="#">Gustavo Fring <span class="label label-primary">CIC</span></a></li>
                    <li><a href="#">Saul Goodman <span class="label label-default">Evaluator</span></a></li>
                    <li><a href="#">Jesse Pinkman <span class="label label-primary">CIC</span></a></li>
                    <li><a href="#">Hank Schrader <span class="label label-default">Evaluator</span></a></li>

                    <li><a href="#">Skyler White <span class="label label-default">Evaluator</span></a></li>
                    <li><a href="#" onclick="selectCourse()">Walter White <span class="label label-primary">CIC</span>
                        <span class="label label-success">Instructor</span></a></li>

                </ul>
            </div>
        </div>

        <div class="col-md-8 col-sm-8">
            <%--<div id="course-home">--%>
                <%--<g:include view="users/useraccounts.gsp"/>--%>
            <%--</div>--%>
            <%--<div class="importpage" id="cse102">--%>
                <%--<g:include view="users/walterwhite.gsp"/>--%>
            <%--</div>--%>
            <%--<div class="importpage" id="add-user">--%>
                <%--<g:include view="users/adduser.gsp"/>--%>
            <%--</div>--%>
            <%--<div class="importpage" id="edit-form">--%>
                <%--<g:include view="course2.gsp"/>--%>
            <%--</div>--%>
        </div>

    </div>

    <jsp:include page="../pagefrags/footer.jsp"/>
</div>

</div>
</body>
</html>