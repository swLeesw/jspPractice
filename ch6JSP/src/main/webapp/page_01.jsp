
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String str = request.getParameter("id");
    if (str.equals("sw")) {
        response.sendRedirect("page_02.jsp?");
    }
%>


</body>
</html>
