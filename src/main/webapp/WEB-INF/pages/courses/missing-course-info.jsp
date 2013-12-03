<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title><fmt:message key="title"/> | Identify Missing Course Information</title>

    <meta name="author" content="Monika Tuchowska, Jason Chen, Yun Peng, Alvin Qiang"/>
    <jsp:include page="../pagefrags/imports.jsp"/>
</head>
<body>
<div class="container">

    <jsp:include page="../pagefrags/nav.jsp"/>

    <div class="row maincontent">

        <jsp:include page="../pagefrags/bread.jsp"/>



        <div class="col-md-12 col-sm-12">
        <form id="">
            <p>
               <h2>1. Select Group</h2>
                <h4>Show me missing info provided by
                <select class="selectpicker" id="select-group">
                    <option value="cic">CIC Members</option>
                    <option value="instructors">Instructors</option>
                    <option value="course-coordinators">Course Coordinators</option>

                </select></h4> <br>
            </p>
            <p>
                <h2>2. Select Courses</h2>
                <h4>Notify <span class="selected-group">CIC Members</span> about the following courses:</h4>

                <table class="tabulate table table-bordered table-striped">
                    <thead>
                    <tr>
                        <th><input type="checkbox" id="select-all"></th>
                        <th>Semester</th>
                        <th>Course</th>
                        <th>Section</th>
                        <th>Instructor</th>
                        <th>Missing Info</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>Fall 2010</td>
                        <td>CHE 132</td>
                        <td>01</td>

                        <td>Walter White</td>
                        <td>Syllabus</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>Fall 2010</td>
                        <td>CHE 132</td>
                        <td>01</td>
                        <td>Walter White</td>
                        <td>Syllabus</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>Fall 2010</td>
                        <td>CHE 132</td>
                        <td>01</td>
                        <td>Walter White</td>
                        <td>Syllabus</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td>Fall 2010</td>
                        <td>CHE 132</td>
                        <td>01</td>
                        <td>Walter White</td>
                        <td>Syllabus</td>
                    </tr>
                    </tbody>
                </table>
            </p>
            <p>
                <h2>3. Enter Message</h2>
                <h4>Send the following message about the selected courses:</h4>
                <textarea class="fat-textarea" rows="5" name="myname"></textarea>
            <br><br>
            </p>
            <input type='submit' class="btn btn-default fat-btn blue-hover" id="submit" value='Send Request'/>
            </form>
        </div>
    </div>

    <jsp:include page="../pagefrags/footer.jsp"/>
</div>

</div>

<script type="text/javascript">
    $("#select-all").click(function(){
        $(this).closest('table').find(':checkbox').prop('checked', this.checked);
    });

    $("#select-group").change(function(){
        $('.selected-group').html($("#select-group :selected").text());
    });
</script>
</body>
</html>