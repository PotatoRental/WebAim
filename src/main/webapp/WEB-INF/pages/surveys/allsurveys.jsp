<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title><fmt:message key="title"/> | Manage Student Outcomes</title>

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
                <h2>Manage Surveys</h2>
                <table class="table table-striped">
                    <tr>
                        <th>Degree Program</th>
                        <th>Group</th>
                        <th>Initiator</th>
                        <th>Semester</th>
                        <th>Results</th>
                        <th></th>
                    </tr>
                    <form>
                        <tr id="header-form">
                            <td>
                                <select required name="degree-program">
                                    <option value="CSE">Computer Science</option>
                                    <option value="ISE">Information Systems</option>
                                </select>
                            </td>
                            <td><input type='text' required name="group" class="fat" placeholder="Group"></td>
                            <td><input type='text' required name="initiator" class="fat" placeholder="Initiator"></td>
                            <td>
                                <select required name="semester" id="semester">
                                    <%--<option disabled value="month" selected="selected">Month</option>--%>

                                        <option value="fall">Fall</option>
                                        <option value="spring">Spring</option>
                                </select>

                                <select required name="year" id="year">
                                    <%--<option disabled value="year" selected="selected">Year</option>--%>
                                    <c:forEach var="i" begin="0" end="23" step="1">
                                        <option value="${2013-i}">${2013-i}</option>
                                    </c:forEach>
                                </select>
                            </td>

                            <td><button class="btn btn-default">Select Results File</button></td>
                            <td>
                                <input type='submit' class="fat btn btn-primary" value='Add Survey'/>
                            </td>
                        </tr>
                    </form>
                    <c:forEach var="i" begin="0" end="23" step="1">


                    <tr>
                        <td><a class="department" data-pk="${i}"> Computer Science</a></td>
                        <td><a class="group" data-pk="${i}">Group Name</a></td>
                        <td><a class="initiator" data-pk="${i}">Initiator</a></td>
                        <td>
                            <a style="display: inline;" class="editable editable-click" href="#" id="dob2" data-type="combodate" data-value="2013-05-15" data-format="YYYY-MM-DD" data-viewformat="DD/MM/YYYY" data-template="D / MMM / YYYY" data-pk="1" data-title="Select Date">15/05/2013</a>
                        </td>
                        <td><a href="#">results.pdf</a></td>

                        <td>
                            <a style="display: inline;" class="editable editable-click" href="#" id="dob" data-type="combodate" data-value="2013-05-15" data-format="YYYY-MM-DD" data-viewformat="MM/DD | YYYY" data-template="MMM / D | YYYY" data-pk="1" data-title="Select Date">05/15/2013</a>
                        </td>
                    </tr>
                    </c:forEach>




                </table>

            </div>

        </div>
    </div>

    <jsp:include page="../pagefrags/footer.jsp"/>
</div>



<script type="text/javascript">
    $(document).ready(function() {
        //toggle `popup` / `inline` mode
        $.fn.editable.defaults.mode = 'inline';



        $('.department').editable({
            type: 'select',
            title: 'Select status',
            name: 'degreeProgramId', //COLUMN OF DATABASE TABLE TO BE EDITED
            placement: 'right',
            value: 2,
            source: [
                {value: 1, text: 'Applied Mathematics'},
                {value: 2, text: 'Computer Science'},
                {value: 3, text: 'Information Systems'}
            ]
            /*
             //uncomment these lines to send data on server

             ,url: '/post'
             */
        });

        $('.group').editable();
       // $('.initiator').editable();

        $('.s').editable({
            url: '/post',
            value: {
                city: "Moscow",
                street: "Lenina",
                building: "12"
            },

            display: function(value) {
                if(!value) {
                    $(this).empty();
                    return;
                }
                var html = '<b>' + $('<div>').text(value.city).html() + '</b>, ' + $('<div>').text(value.street).html() + ' st., bld. ' + $('<div>').text(value.building).html();
                $(this).html(html);
            }
        });

        $(function(){
            $('#dob').editable({
                format: 'YYYY-MM-DD',
                viewformat: 'DD.MM.YYYY',
                template: 'D / MMMM / YYYY',
                combodate: {
                    minYear: 2000,
                    maxYear: 2015,
                    minuteStep: 1
                }
            });
        });


        $('.initiator').editable({
            source: [
                {id: 'gb', text: 'Great Britain'},
                {id: 'us', text: 'United States'},
                {id: 'ru', text: 'Russia'}
            ],
            select2: {
                multiple: true
            }
        });
    });
</script>

</body>
</html>