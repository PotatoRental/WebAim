<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 10/18/13
  Time: 1:10 AM
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<nav>
    <ul id="cbp-tm-menu" class="cbp-tm-menu">
        <a href="/" style="float:left"><img id="aim-logo" src="/images/logo_b.png"/></a>

        <li>
            <a href="#">Programs & Courses</a>
            <ul class="cbp-tm-submenu">
                <li><a href="/programs/" >Degree Programs</a></li>

                <spring:url value="/courses" var="courseUrl" htmlEscape="true"/>
                <li><a href="${courseUrl}">Courses</a></li>
                <sec:authorize ifAnyGranted="ROLE_ADMIN, ROLE_CIC, ROLE_CC, ROLE_EVAL, ROLD_INSTR">
                    <li><a href="/courses/offerings" >Course Offerings</a></li>
                </sec:authorize>
                <sec:authorize ifAnyGranted="ROLE_ADMIN, ROLE_CIC">
                    <li><a href="/courses/missing-course-info" >Missing Course Info</a></li>
                </sec:authorize>
                <sec:authorize ifAnyGranted="ROLE_ADMIN, ROLE_CC, ROLE_CIC">
                    <li><a href="/courses/cc-reports" >Course Coordinator Reports</a></li>
                </sec:authorize>
            </ul>
        </li>
        <sec:authorize ifAnyGranted="ROLE_ADMIN, ROLE_CIC">
        <li>
            <a href="#">Student Outcomes</a>
            <ul class="cbp-tm-submenu">
                <li><a href="/outcome/manage-outcomes">Manage Outcomes</a></li>
                <li><a href="/outcome/tabulate-outcomes">Tabulate Outcomes</a></li>
            </ul>
        </li>


            <li>
                <a href="#">PEOs</a>
                <ul class="cbp-tm-submenu">
                    <li><a href="/peo/manage-peos" >Manage PEOs</a></li>
                    <li><a href="/peo/tabulate-attainment">Tabulate PEO Attainment</a></li>
                </ul>
            </li>

            <li><a href="/minutes/">Minutes</a></li>
        </sec:authorize>
        <sec:authorize ifAnyGranted=" ROLE_EVAL">
            <li><a href="/minutes/eval/${currentUser.degreeprograms[0].id}">Minutes</a></li>
            <li><a href="/surveys/eval/${currentUser.degreeprograms[0].id}">Surveys</a></li>
            </sec:authorize>
        <sec:authorize ifAnyGranted="ROLE_ADMIN, ROLE_CIC">
            <li><a href="/surveys/">Surveys</a></li>

            <li><a href="/users/">Users</a></li>
        </sec:authorize>
    </ul>
</nav>

<script src="/js/cbpTooltipMenu.min.js"></script>
<script>
    var menu = new cbpTooltipMenu(document.getElementById('cbp-tm-menu'));
</script>

<script>
    (function ($) {
        $(window).load(function () {
            $(".search-results").mCustomScrollbar({
                theme: "dark-2",
                advanced: {
                    updateOnContentResize: true,
                    scrollInertia: 0
                }
            });
        });
    })(jQuery);
</script>
