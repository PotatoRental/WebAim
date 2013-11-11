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

        <div class="list col-md-3 col-sm-3" id="list">
            <sec:authorize ifAnyGranted="ROLE_CC">
                <div class="add-btn">
                    Courses You Are Coordinating:
                </div>
                <div class="search-results">
                    <ul>
                        <li><a href="#">CSE 110</a></li>
                        <li><a href="#">CSE 114</a></li>
                        <li><a href="#">CSE 110</a></li>
                        <li><a href="#">CSE 114</a></li>
                    </ul>
                </div>
            </sec:authorize>


        </div>

        <div class="col-md-9 col-sm-8">



            <div id="course-home">
                <h2>To Do List</h2>
                <p>Upload your report for the following courses:</p>

                <table class="tabulate table table-bordered table-striped">
                    <tr>
                        <td class="title-col"><a href="#">CSE 110</a> </td>
                        <td><input type='submit' class="btn btn-default blue-hover" value='Upload File'/></td>
                    </tr>
                    <tr>
                        <td class="title-col"><a href="#">CSE 110</a></td>
                        <td><input type='submit' class="btn btn-default blue-hover" value='Upload File'/></td>
                    </tr>
                    <tr>
                        <td class="title-col"><a href="#">CSE 110</a></td>
                        <td><input type='submit' class="btn btn-default blue-hover" value='Upload File'/></td>
                    </tr>
                    <tr>
                        <td class="title-col"><a href="#">CSE 110</a></td>
                        <td><input type='submit' class="btn btn-default blue-hover" value='Upload File'/></td>
                    </tr>
                </table>

                <h2>Your Reports</h2>
                <table class="tabulate table table-bordered table-striped">
                    <tr>
                        <th>Course</th>
                        <th>Report</th>

                    <tr>
                        <td class="title-col"><a href="#">CSE 110</a></td>
                        <td><a href="#">report.txt</a> <input type='submit' class="btn btn-default blue-hover" value='Upload File'/></td>
                    </tr>
                    <tr>
                        <td class="title-col"><a href="#">CSE 110</a> </td>
                        <td><a href="#">report.txt</a> <input type='submit' class="btn btn-default blue-hover" value='Upload File'/></td>
                    </tr>
                    <tr>
                        <td class="title-col"><a href="#">CSE 110</a> </td>
                        <td><a href="#">report.txt</a> <input type='submit' class="btn btn-default blue-hover" value='Upload File'/></td>
                    </tr>
                    <tr>
                        <td class="title-col"><a href="#">CSE 110</a> </td>
                        <td><a href="#">report.txt</a> <input type='submit' class="btn btn-default blue-hover" value='Upload File'/></td>
                    </tr>
                </table>

            </div>

        </div>
    </div>

    <jsp:include page="../pagefrags/footer.jsp"/>
</div>

</div>
</body>
</html>