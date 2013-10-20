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
            <h4>Select Outcome:</h4>
            <select class="blue-hover" id="select-outcome">
                <option value="soa-direct" selected="selected">Student Outcome Attainment (Direct Assessment)</option>
                <option value="soa-direct-course">Student Outcome Attainment (Direct Assessment) by Course</option>
                <option value="soa-survey">Student Outcome Attainment (Survey Assessment)</option>
                <option value="so-enabled-courses">Student Outcome Enabled by Courses</option>
                <option value="so-assessed-courses">Student Outcome Assessed in Courses</option>
            </select> <br> <hr>
            <form id="soa-direct" class="outcome-form">

                <h4>Degree Program: </h4> <br>
                <select class="blue-hover">
                    <option value="accounting">Accounting</option>
                    <option value="biochemistry">Biochemistry</option>
                    <option value="computer-science">Computer Science</option>
                    <option value="information-systems">Information Systems</option>
                </select> <br> <br>


                <h4>Academic Years:</h4> <br>
                From <input type="text" name="year-start" class="year blue-hover"> to <input type="text" name="year-end" class="year blue-hover"> <br> <br>

                <input type='submit' class="btn btn-default fat-btn blue-hover" id="submit" value='Tabulate'/>

            </form>

            <form id="soa-survey" class="outcome-form">

                <h4>Degree Program: </h4> <br>
                <select class="blue-hover">
                    <option value="accounting">Accounting</option>
                    <option value="biochemistry">Biochemistry</option>
                    <option value="computer-science">Computer Science</option>
                    <option value="information-systems">Information Systems</option>
                </select> <br> <br>


                <h4>Academic Years:</h4> <br>
                From <input type="text" name="year-start" class="year blue-hover"> to <input type="text" name="year-end" class="year blue-hover"> <br> <br>

                <input type='submit' class="btn btn-default fat-btn blue-hover" id="submit" value='Tabulate'/>

            </form>

            <form id="soa-direct-course" class="outcome-form">

                <h4>Degree Program: </h4> <br>
                <select class="blue-hover">
                    <option value="accounting">Accounting</option>
                    <option value="biochemistry">Biochemistry</option>
                    <option value="computer-science">Computer Science</option>
                    <option value="information-systems">Information Systems</option>
                </select> <br> <br>

                <h4>Semester:</h4> <input type="text" name="year" class="year blue-hover"><br>
                <input type="radio" name="semester" value="fall">fall
                <input type="radio" name="semester" value="spring">spring<br>

                <input type='submit' class="btn btn-default fat-btn blue-hover" id="submit" value='Tabulate'/>

            </form>

            <form id="so-enabled-courses" class="outcome-form">

                <h4>Degree Program: </h4> <br>
                <select class="blue-hover">
                    <option value="accounting">Accounting</option>
                    <option value="biochemistry">Biochemistry</option>
                    <option value="computer-science">Computer Science</option>
                    <option value="information-systems">Information Systems</option>
                </select> <br> <br>

                <h4>Academic Year:</h4> <input type="text" name="year" class="year blue-hover"><br>  <br>

                <input type='submit' class="btn btn-default fat-btn blue-hover" id="submit" value='Tabulate'/>

            </form>

            <form id="so-assessed-courses" class="outcome-form">

                <h4>Degree Program: </h4> <br>
                <select class="blue-hover">
                    <option value="accounting">Accounting</option>
                    <option value="biochemistry">Biochemistry</option>
                    <option value="computer-science">Computer Science</option>
                    <option value="information-systems">Information Systems</option>
                </select> <br> <br>

                <h4>Academic Year:</h4> <input type="text" name="year" class="year blue-hover"><br>  <br>

                <input type='submit' class="btn btn-default fat-btn blue-hover" id="submit" value='Tabulate'/>

            </form>

        </div>

        <div class="col-md-9 col-sm-9">

            <table class="tabulate table table-bordered table-striped" id="soa-direct-table">

                <tr>
                    <th>Year</th>
                    <th>PEO1</th>
                    <th>PEO2</th>
                    <th>PEO3</th>
                </tr>

                <tr>
                    <td>TARGET</td>
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

            </table>

        </div>
    </div>

    <jsp:include page="../pagefrags/footer.jsp"/>
</div>

<script type="text/javascript">
    $( "#select-outcome" ).change(function() {
        var str = "#";
        $( "#select-outcome option:selected" ).each(function() {
            str += $( this ).val();
        });
        $(".outcome-form").addClass("hidden");
        $(str).removeClass("hidden");
        $(".tabulate").attr("id", str+"-table");
    });

</script>

</body>
</html>