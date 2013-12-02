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

            <div>
                <h2>Manage PEOs</h2>
                <table class="table table-striped">
                    <form>
                        <tr id="header-form">
                            <td><textarea class="fat" placeholder="Enter new PEO here."></textarea></td>
                            <td>
                                <input type='submit' class="fat btn btn-default blue-hover" value='Add'/>
                            </td>
                        </tr>
                    </form>
                    <tr>
                        <td>
                            Establish themselves as practicing professionals or engage in advanced study in computer science, information technology, or related areas.
                        </td>
                        <td>
                            <input type='submit' class="fat btn btn-default blue-hover" value='Edit'/>
                            <input type='submit' class="fat btn btn-default blue-hover" value='Delete'/>

                        </td>
                    </tr>
                    <tr>
                        <td> Advance professionally through organized training or self-learning in areas related to computer science and information technology

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