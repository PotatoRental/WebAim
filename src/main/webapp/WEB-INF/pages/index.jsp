<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 10/18/13
  Time: 12:18 AM
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title><fmt:message key="title"/>${title}</title>

    <meta name="author" content="Monika Tuchowska, Jason Chen, Yun Peng, Alvin Qiang"/>
    <jsp:include page="pagefrags/imports.jsp"/>
</head>

<body>
<div class="container">
    <jsp:include page="pagefrags/nav.jsp"/>

    <div class="row maincontent">

        <jsp:include page="pagefrags/bread.jsp"/>

        <div class="row">
            <div class="col-md-3">
                <h4>Quick Links</h4>

                <div class="quicklinks">
                    <ul>
                        <li><a href="#">All Course Listings</a></li>
                        <li><a href="#">Degree Programs</a></li>
                        <sec:authorize ifAnyGranted="ROLE_ADMIN, ROLE_CIC">
                            <li><a href="#">View Instructors</a></li>
                            <li><a href="#">View Course Coordinators</a></li>
                            <li><a href="#">View Evaluators</a></li>
                        </sec:authorize>
                    </ul>
                </div>
                <br>
                <sec:authorize ifAnyGranted="ROLE_CC">
                    <h4>
                        Courses You Are Teaching
                    </h4>

                    <div class="quicklinks">
                        <ul>
                            <li><a href="#">CSE 102</a></li>
                            <li><a href="#">CSE 320</a></li>
                        </ul>
                    </div>
                    <br>
                    <h4>Courses You Are Coordinating</h4>

                    <div class="quicklinks">
                        <ul>
                            <li><a href="#">CSE 336</a></li>
                            <li><a href="#">CSE 373</a></li>
                        </ul>
                    </div>
                </sec:authorize>
            </div>

            <div class="col-md-7 col-sm-7 col-sm-offset-1 col-md-offset-1">
                <h2>${message}</h2>
                <sec:authorize access="isAuthenticated()">
                    <%--CSE 308 final project. The purpose of project is to recreate the computer science
                    department's ABET Information Manager.

                    The system's main functions are to:

                    (1) Provide a repository for all accreditation-related material. This consists primarily of
                    information used to assess achievement of PEOs and student outcomes. It also includes some
                    miscellaneous material, such as minutes of CIC meetings.

                    (2) Provide a convenient way for instructors and CIC members to add information to the
                    repository.

                    (3) Provide CIC members and evaluators (outside experts appointed by ABET to evaluate a degree
                    program) with convenient access to this material

                    (4) Generate various tables from the data in the repository, to be included in the department's
                    report to ABET.

                    The rest of this overview provides some background on how achievement of PEOs and student
                    outcomes are measured...--%>
                </sec:authorize>
                <%--
                <sec:ifLoggedIn>
                    <h1>Hello, welcome <sec:loggedInUserInfo field="username"/></h1>
                </sec:ifLoggedIn>--%>
                <sec:authorize ifAnyGranted="ROLE_CIC">
                    <h4>Updates</h4>

                    <div class="alert alert-dismissable alert-warning">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <strong>4 courses are missing information.</strong> <a href="#">View</a>.
                    </div>

                    <div class="alert alert-dismissable alert-info">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        2 courses have been added to the system. <a href="#">View</a>.
                    </div>
                </sec:authorize>
            </div>

        </div>
    </div>
</div>

</div>

<div class="col-md-12 content">
    <div class="copyrights">
        <small>&copy; 2013 Qiang He, Yun Pang, Jason Chen, Monika Tuchowska</small>
    </div>
</div>

</div>
</body>
</html>