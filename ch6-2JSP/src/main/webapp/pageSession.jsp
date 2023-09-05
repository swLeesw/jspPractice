<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        ArrayList<String> lists = (ArrayList<String>) session.getAttribute("lists");

        for (int i = 0; i < lists.size(); i++) {
            out.print(lists.get(i) + ' ');
        }

    %>
</body>
</html>
