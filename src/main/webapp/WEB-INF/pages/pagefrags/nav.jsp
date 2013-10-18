<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 10/18/13
  Time: 1:10 AM
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<ul id="cbp-tm-menu" class="cbp-tm-menu">
    <a href="/" style="float:left"><img id="aimlogo" src="/images/logo_b.png"/></a>

    <li>
        <a href="#">Programs & Courses</a>
        <ul class="cbp-tm-submenu">
            <li><a href="#" class="cbp-tm-icon-archive">Degree Programs</a></li>

            <spring:url value="/courses" var="courseUrl" htmlEscape="true"/>
            <li><a href="${courseUrl}" class="cbp-tm-icon-cog">Courses</a></li>
            <sec:authorize ifAnyGranted="ROLE_ADMIN, ROLE_CIC, ROLE_CC, ROLE_EVAL">
                <li><a href="#" class="cbp-tm-icon-location">Course Offerings</a></li>
            </sec:authorize>
            <sec:authorize ifAnyGranted="ROLE_ADMIN, ROLE_CIC">
                <li><a href="#" class="cbp-tm-icon-users">Missing Course Info</a></li>
                <li><a href="#" class="cbp-tm-icon-earth">Course Coordinator Reports</a></li>
            </sec:authorize>
        </ul>
    </li>

    <li>
        <a href="#">Student Outcomes</a>
        <ul class="cbp-tm-submenu">
            <li><a href="#" class="cbp-tm-icon-archive">Manage Outcomes</a></li>
            <li><a href="#" class="cbp-tm-icon-cog">Tabulate Outcomes</a></li>
        </ul>
    </li>

    <sec:authorize ifAnyGranted="ROLE_ADMIN, ROLE_CIC">
        <li>
            <a href="#">PEOs</a>
            <ul class="cbp-tm-submenu">
                <li><a href="#" class="cbp-tm-icon-screen">Manage PEOs</a></li>
                <li><a href="#" class="cbp-tm-icon-mail">Tabulate PEO Attainment</a></li>
            </ul>
        </li>
        <li><a href="#">Minutes</a></li>
        <li><a href="#">Surveys</a></li>
        <li><a href="/users/">Users</a></li>
    </sec:authorize>

    <sec:authorize ifAnyGranted="ROLE_ADMIN">
        <li><a href="#">Minutes</a></li>
    </sec:authorize>
</ul>

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
