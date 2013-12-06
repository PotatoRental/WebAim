<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <option value="ROLE_CIC">CIC Members</option>
                    <option value="ROLE_INSTR">Instructors</option>
                    <option value="ROLE_CC">Course Coordinators</option>

                </select></h4> <br>
            </p>
            <p>
                <h2>2. Select Courses</h2>
                <h4>Notify <span class="selected-group">CIC Members</span> about the following courses:</h4>


            </p>
            <div class="insert"></div>
            <p>
                <h2>3. Enter Message</h2>
                <h4>Send the following message about the selected courses:</h4>
                <textarea class="fat-textarea" rows="5" name="myname"></textarea>
            <br><br>
            </p>
            <input type='submit' class="btn btn-default fat-btn blue-hover" id="submit" value='Send Request'/>
            </form>
            <button type="button">Email people</button>
        </div>
    </div>

    <jsp:include page="../pagefrags/footer.jsp"/>
</div>

</div>

<script type="text/javascript">


    $("#select-group").change(function(){
        $('.selected-group').html($("#select-group :selected").text());

        $('.insert').load("/courses/offering-table/"+$("#select-group").val());
    });

    $("button").click(function() {
        $('.insert').load("/courses/offering-table/sendemail");
    });
</script>
</body>
</html>