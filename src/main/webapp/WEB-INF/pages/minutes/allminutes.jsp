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
                <h2>Manage Minutes</h2>
                <table class="table table-striped">
                    <form>
                        <tr id="header-form">
                            <td style="width:210px">
                                <select name="month" id="month">
                                    <%--<option disabled value="month" selected="selected">Month</option>--%>
                                    <c:forEach var="i" begin="1" end="12" step="1">
                                        <option value="${i}">${i}</option>
                                    </c:forEach>
                                </select>
                                /
                                <select name="day" id="day">
                                    <%--<option disabled value="day" selected="selected">Day</option>--%>
                                    <c:forEach var="i" begin="1" end="31" step="1">
                                        <option value="${i}">${i}</option>
                                    </c:forEach>
                                </select>
                                /
                                <select name="year" id="year">
                                    <%--<option disabled value="year" selected="selected">Year</option>--%>
                                    <c:forEach var="i" begin="0" end="23" step="1">
                                        <option value="${2013-i}">${2013-i}</option>
                                    </c:forEach>
                                </select>
                            </td>
                            <td><input type='text' required name="group" class="fat" placeholder="group"></td>
                            <td><textarea name="minutes" class="fat" required
                                          placeholder="Enter new minutes here."></textarea></td>
                            <td>
                                <input type='submit' class="fat btn btn-default blue-hover" value='Add'/>
                            </td>
                        </tr>
                    </form>
                    <c:forEach begin="0" end="20" var="i" step="1">
                        <tr>
                            <td>
                                <a style="display: inline;" class="date editable editable-click" href="#" id="${i}"
                                   data-type="combodate" data-value="2013-05-15" data-format="YYYY-MM-DD"
                                   data-viewformat="DD/MM/YYYY" data-template="D / MMM / YYYY" data-pk="1"
                                   data-title="Select Date">15/05/2013</a>
                            </td>
                            <td><a class="group-name">Group Name</a></td>
                            <td>
                                <a class="minutes">An ability to apply knowledge of computing and mathematics appropriate to the discipline</a>
                            </td>
                            <td>

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
    $(document).ready(function () {
        //toggle `popup` / `inline` mode
        $.fn.editable.defaults.mode = 'popup';
        $(function () {
            $('.date').editable({
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

        $('.group-name').editable({
            mode:'inline'
        });

        $('.minutes').editable({
            mode:'inline',
            type: 'textarea',
            rows:4,
            inputclass: 'fat',
            width: 300
        })
    });
</script>

</body>
</html>