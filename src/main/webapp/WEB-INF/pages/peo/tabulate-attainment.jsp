<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title><fmt:message key="title"/></title>

    <meta name="author" content="Monika Tuchowska, Jason Chen, Yun Peng, Alvin Qiang"/>
    <jsp:include page="../pagefrags/imports.jsp"/>
</head>
<body>
<div class="container">

    <jsp:include page="../pagefrags/nav.jsp"/>

    <div class="row maincontent">

        <jsp:include page="../pagefrags/bread.jsp"/>

        <div class="courselist col-md-3 col-sm-3" id="courselist">
            <form>

                <h4>Degree Program: </h4> <br>
                <select class="fat-select">
                    <c:forEach items="${degreeprograms}" var="program">
                        <option value="${program.id}">${program.id}</option>
                    </c:forEach>
                </select> <br> <br>

                <h4>Academic Years:</h4> <br>
                From <input type="text" name="year-start" class="year"> to <input type="text" name="year-end" class="year"> <br> <br>

                <h4>Base Attainment Level On: </h4>  <br>
                <input type="radio" name="base-level" value="alumni-survey">Alumni Survey<br>
                <input type="radio" name="base-level" value="employer-survey">Employer Survey<br>
                <input type="radio" name="base-level" value="both">Both (avg.)

                <br><br>
                <button type="button" class="btn btn-default fat-btn blue-hover" id="submit">Tabulate</button>
                <%--<input type='submit' class="btn btn-default fat-btn blue-hover" id="submit" value='Tabulate'/>--%>

            </form>
        </div>

        <div class="col-md-9 col-sm-9">

            <%--<jsp:include page="../peo/table.jsp"/>--%>
            <div id="tabulate-table"></div>

        </div>
    </div>

    <jsp:include page="../pagefrags/footer.jsp"/>
</div>

</div>

<script type="text/javascript">
    $("#submit").click(function () {
        $("#tabulate-table").load("/peo/table");
    })
</script>
</body>
</html>