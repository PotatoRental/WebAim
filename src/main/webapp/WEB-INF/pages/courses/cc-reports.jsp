<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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


        <div class="col-md-12 col-sm-12">


            <div id="course-home">
                <sec:authorize ifAnyGranted=" ROLE_CC">
                    <h2>Courses You Are Coordinating</h2>
                    <table class="tabulate table table-bordered table-striped">
                        <tr>
                            <th>Course</th>
                            <th>Report</th>
                            <th></th>

                        <tr>
                            <td><a href="#">CSE 110</a></td>
                            <td><a href="#">report.txt</a></td>
                            <td><input type='submit' class="btn btn-default blue-hover" value='Upload File'/></td>
                        </tr>
                        <tr>
                            <td><a href="#">CSE 110</a></td>
                            <td><a href="#">report.txt</a>
                            </td>
                            <td><input type='submit' class="btn btn-default blue-hover" value='Upload File'/></td>
                        </tr>
                        <tr>
                            <td><a href="#">CSE 110</a></td>
                            <td><a href="#">report.txt</a></td>
                            <td><input type='submit' class="btn btn-default blue-hover" value='Upload File'/></td>
                        </tr>
                        <tr>
                            <td><a href="#">CSE 110</a></td>
                            <td><a href="#">report.txt</a></td>
                            <td><input type='submit' class="btn btn-default blue-hover" value='Upload File'/></td>
                        </tr>
                    </table>
                </sec:authorize>

                <sec:authorize ifAnyGranted=" ROLE_CIC, ROLE_ADMIN">
                    <h2>All Reports</h2>
                    <table class="tabulate table table-bordered table-striped">
                        <tr>
                            <th>Course</th>
                            <th>Report</th>
                            <th></th>

                        <tr>
                            <td><a href="#">CSE 110 | Introduction to Programming</a></td>
                            <td><a href="#">report.txt</a></td>
                            <td><input type='submit' class="btn btn-default blue-hover" value='Upload File'/></td>
                        </tr>
                        <tr>
                            <td><a href="#">CSE 110 | Introduction to Programming</a></td>
                            <td><a href="#">report.txt</a></td>
                            <td><input type='submit' class="btn btn-default blue-hover" value='Upload File'/></td>
                        </tr>
                        <tr>
                            <td><a href="#">CSE 110 | Introduction to Programming</a></td>
                            <td><a href="#">report.txt</a></td>
                            <td><input type='submit' class="btn btn-default blue-hover" value='Upload File'/></td>
                        </tr>
                        <tr>
                            <td><a href="#">CSE 110 | Introduction to Programming</a></td>
                            <td><a href="#">report.txt</a></td>
                            <td><input type='submit' class="btn btn-default blue-hover" value='Upload File'/></td>
                        </tr>
                    </table>
                </sec:authorize>

            </div>

        </div>
    </div>

    <jsp:include page="../pagefrags/footer.jsp"/>
</div>

</div>
</body>
</html>