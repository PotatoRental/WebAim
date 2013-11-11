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
                    Sidebar?
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

            <div>
                <h2>Manage Student Outcomes</h2>
                <table class="table table-striped">
                        <form>
                            <tr id="header-form">
                                <td><textarea class="fat" placeholder="Enter new student outcome here."></textarea></td>
                                <td>
                                    <input type='submit' class="fat btn btn-default blue-hover" value='Add'/>
                                </td>
                            </tr>
                        </form>
                    <tr>
                        <td>
                            An ability to apply knowledge of computing and mathematics appropriate to the discipline
                        </td>
                        <td>
                            <input type='submit' class="fat btn btn-default blue-hover" value='Edit'/>
                            <input type='submit' class="fat btn btn-default blue-hover" value='Delete'/>

                        </td>
                    </tr>
                    <tr>
                        <td> An ability to analyze a problem, and identify and define the computing requirements
                            appropriate to its solution

                        </td>
                        <td>
                            <input type='submit' class="fat btn btn-default blue-hover" value='Edit'/>
                            <input type='submit' class="fat btn btn-default blue-hover" value='Delete'/>
                        </td>
                    </tr>
                    <tr>
                        <td>An ability to design, implement, and evaluate a computer-based system, process, component or
                            program to meet desired needs

                        </td>
                        <td>
                            <input type='submit' class="fat btn btn-default blue-hover" value='Edit'/>
                            <input type='submit' class="fat btn btn-default blue-hover" value='Delete'/>
                        </td>
                    </tr>
                    <tr>
                        <td>An ability to function effectively on teams to accomplish a common goal

                        </td>
                        <td>
                            <input type='submit' class="fat btn btn-default blue-hover" value='Edit'/>
                            <input type='submit' class="fat btn btn-default blue-hover" value='Delete'/>
                        </td>
                    </tr>


                </table>

            </div>

        </div>
    </div>

    <jsp:include page="../pagefrags/footer.jsp"/>
</div>

<script type="text/javascript">

</script>

</body>
</html>