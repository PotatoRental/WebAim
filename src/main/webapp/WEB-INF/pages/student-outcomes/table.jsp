<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="soac" value="false"/>
<c:if test="${selectedoutcome eq 'so-assessed-courses'}">
    <c:set var="soac" value="true"/>
</c:if>

<table class="tabulate table table-bordered table-striped">
    <thead>
    <tr>
        <th>Year</th>
        <c:forEach items="${studentoutcomes}" var="studentoutcome">
            <th>${studentoutcome.id}</th>
        </c:forEach>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${courses}" var="course">
        <tr>
            <td>${course.id}</td>


            <c:forEach items="${studentoutcomes}" var="studentoutcome">

                <td class="check-col">
                    <c:set var="cond" value="true"/>
                    <c:forEach items="${course.courseOutcomes}" var="courseoutcome">
                        <c:forEach items="${studentoutcomecourseoutcome}" var="soco">

                               <c:if test="${soco[3] eq courseoutcome.sequenceNumber and soco[4] eq studentoutcome.id and cond eq 'true'}">
                                   <span class="glyphicon glyphicon-ok"></span>
                                   <c:set var="cond" value="false"/>
                               </c:if>
                        </c:forEach>
                    </c:forEach>

                </td>

            </c:forEach>

        </tr>

    </c:forEach>
    </tbody>
</table>

<script type="text/javascript">
    <c:if test="${soac eq 'true'}">
    $(".check-col:nth-child(10)").text("");
    $(".check-col:nth-child(4)").text("");
     </c:if>

</script>