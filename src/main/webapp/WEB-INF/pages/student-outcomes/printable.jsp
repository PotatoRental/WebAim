<%--
  Created by IntelliJ IDEA.
  User: Polak
  Date: 12/6/13
  Time: 7:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Printable Table</title>
    <jsp:include page="../pagefrags/imports.jsp"/>
</head>
<body style="max-width:800px">

</body>
</html>

<script type="text/javascript">

    $(document).ready(function(){
        $("body").load("/outcome/cse/tabulate");
    })

</script>