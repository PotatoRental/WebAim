<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title><fmt:message key="title"/> | <fmt:message key="title.courses"/> </title>

    <meta name="author" content="Monika Tuchowska, Jason Chen, Yun Pang, Alvin Qiang"/>
    <jsp:include page="../pagefrags/imports.jsp"/>
</head>
<body>
<div class="container">

    <jsp:include page="../pagefrags/nav.jsp"/>

    <div class="row maincontent">

        <jsp:include page="../pagefrags/bread.jsp"/>

        <div class="list col-md-3 col-sm-3" id="list">
            <div class="row blue-hover">
                <div class="input-group" id="search-input-group">
                  <span class="input-group-btn">
                    <span id="search-ico" class="glyphicon glyphicon-search"></span>
                  </span>
                    <input type="text" class="form-control" id="search-field" value="Search Course Offerings" onclick="this.value=''">
                </div>
                <!-- input-group -->

            </div>

            <div class="search-results">
                <ul>
                    <li>
                        <a href="#" onclick="selectCourse()">
                            CSE 102-01
                            <br>
                            <small>Fall 2013</small>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            CSE 110-01
                            <br>
                            <small>Fall 2010</small>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            CSE 110-02
                            <br>
                            <small>Fall 2010</small>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            CSE 110-01
                            <br>
                            <small>Spring 2013</small>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            CSE 110-01
                            <br>
                            <small>Fall 2013</small>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            CSE 110-01
                            <br>
                            <small>Fall 2013</small>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            CSE 110-01
                            <br>
                            <small>Fall 2013</small>
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="col-md-9 col-sm-8">
                <div class="add-btn blue-hover"><span class="glyphicon glyphicon-plus"></span> &nbsp;&nbsp;Add Course Offering</div>

        </div>
    </div>

    <jsp:include page="../pagefrags/footer.jsp" />
</div>

</div>
</body>
</html>