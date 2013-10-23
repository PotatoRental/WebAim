<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                <select class="blue-hover fat-select">
                    <option value="accounting">Accounting</option>
                    <option value="biochemistry">Biochemistry</option>
                    <option value="computer-science">Computer Science</option>
                    <option value="information-systems">Information Systems</option>
                </select> <br> <br>

                <h4>Academic Years:</h4> <br>
                From <input type="text" name="year-start" class="year blue-hover"> to <input type="text" name="year-end" class="year blue-hover"> <br> <br>

                <h4>Base Attainment Level On: </h4>  <br>
                <input type="radio" name="base-level" value="alumni-survey">Alumni Survey<br>
                <input type="radio" name="base-level" value="employer-survey">Employer Survey<br>
                <input type="radio" name="base-level" value="both">Both (avg.)

                <br><br>
                <input type='submit' class="btn btn-default fat-btn blue-hover" id="submit" value='Tabulate'/>

            </form>
        </div>

        <div class="col-md-9 col-sm-9">

            <table class="tabulate table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>Year</th>
                        <th>PEO1</th>
                        <th>PEO2</th>
                        <th>PEO3</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>2010</td>
                        <td>.9</td>
                        <td>.9</td>
                        <td>.9</td>
                    </tr>
                    <tr>
                        <td>2011</td>
                        <td>.9</td>
                        <td>.9</td>
                        <td>.9</td>
                    </tr>
                    <tr>
                        <td>2012</td>
                        <td>.9</td>
                        <td>.9</td>
                        <td>.9</td>
                    </tr>
                    <tr>
                        <td>2013</td>
                        <td>.9</td>
                        <td>.9</td>
                        <td>.9</td>
                    </tr>
                </tbody>
            </table>

        </div>
    </div>

    <jsp:include page="../pagefrags/footer.jsp"/>
</div>

</div>
</body>
</html>