<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--전역변수 및 전역메서드 선언부--%>
    <%!
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/mm/dd hh:mm");
        Date date = new Date();
    %>

    <%=sdf.format(date)%>

</body>
</html>
