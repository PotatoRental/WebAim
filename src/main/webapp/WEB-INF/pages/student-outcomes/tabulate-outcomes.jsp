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
            <h4>Select Outcome:</h4>
            <select class="fat-select" id="select-outcome">
                <option value="soa-direct" selected="selected">Student Outcome Attainment (Direct Assessment)</option>
                <option value="soa-direct-course">Student Outcome Attainment (Direct Assessment) by Course</option>
                <option value="soa-survey">Student Outcome Attainment (Survey Assessment)</option>
                <option value="so-enabled-courses">Student Outcome Enabled by Courses</option>
                <option value="so-assessed-courses">Student Outcome Assessed in Courses</option>
            </select> <br>
            <hr>
            <form id="soa-direct" class="outcome-form">

                <h4>Degree Program: </h4> <br>
                <select class="fat-select">
                    <c:forEach items="${degreeprograms}" var="program">
                        <option value="${program.id}">${program.department}</option>
                    </c:forEach>
                </select> <br> <br>


                <h4>Academic Years:</h4> <br>
                From <input type="text" name="year-start" class="year"> to <input type="text" name="year-end"
                                                                                  class="year"> <br> <br>



            </form>

            <form id="soa-survey" class="outcome-form hidden">

                <h4>Degree Program: </h4> <br>
                <select class="fat-select">
                    <c:forEach items="${degreeprograms}" var="program">
                        <option value="${program.id}">${program.department}</option>
                    </c:forEach>
                </select> <br> <br>


                <h4>Academic Years:</h4> <br>
                From <input type="text" name="year-start" class="year"> to <input type="text" name="year-end"
                                                                                  class="year"> <br> <br>



            </form>

            <form id="soa-direct-course" class="outcome-form hidden">

                <h4>Degree Program: </h4> <br>
                <select class="fat-select">
                    <c:forEach items="${degreeprograms}" var="program">
                        <option value="${program.id}">${program.department}</option>
                    </c:forEach>
                </select> <br> <br>

                <h4>Semester:</h4> <input type="text" name="year" class="year"><br>
                <input type="radio" name="semester" value="fall">fall
                <input type="radio" name="semester" value="spring">spring<br>


            </form>

            <form id="so-enabled-courses" class="outcome-form hidden">

                <h4>Degree Program: </h4> <br>
                <select class="fat-select" id="enabled-courses-prog">
                    <c:forEach items="${degreeprograms}" var="program">
                        <option value="${program.id}">${program.department}</option>
                    </c:forEach>
                </select> <br> <br>

                <h4>Academic Year:</h4> <input type="text" name="year" class="year"><br> <br>



            </form>

            <form id="so-assessed-courses" class="outcome-form hidden">

                <h4>Degree Program: </h4> <br>
                <select class="fat-select">
                    <c:forEach items="${degreeprograms}" var="program">
                        <option value="${program.id}">${program.department}</option>
                    </c:forEach>
                </select> <br> <br>

                <h4>Academic Year:</h4> <input type="text" name="year" class="year"><br> <br>


            </form>
            <button type='button' class="btn btn-default fat-btn blue-hover">Tabulate</button>

        </div>

        <div class="col-md-9 col-sm-9">
            <center><a class="hidden printlink" href="/outcome/printable" target="_blank">Printable Version</a></center>

            <div class="tabulation"></div>

        </div>
    </div>

    <jsp:include page="../pagefrags/footer.jsp"/>
</div>

<script type="text/javascript">
    var selectedopt = "";
    var prog="";
    $("#select-outcome").change(function () {
        var str = "";
        $("#select-outcome option:selected").each(function () {
            str += $(this).val();
        });
        var id = "#" + str;
        $(".outcome-form").addClass("hidden");
        $(id).removeClass("hidden");
        $(".tabulate").attr("id", str + "-table");

         prog = $("#enabled-courses-prog option").val().toLowerCase();
        //if ($(this).val() === 'so-enabled-courses')
        selectedopt = $(this).val();



    });

    $("button").click(function(){
        $(".tabulation").html("<h1>Loading...</h1>");
        $(".tabulation").load("/outcome/"+prog+"/tabulate/"+selectedopt, function() {
            $(".printlink").removeClass("hidden");
        });

    })

</script>

</body>
</html>