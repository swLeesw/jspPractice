<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>success</title>
</head>
<body>
login has successed
<%
    Cookie[] cookies = request.getCookies();
    for (int i = 0; i < cookies.length; i++) {
        String id = cookies[i].getValue();
        if (id.equals("seungwon")) {
            out.print("welcome " + id + "!");
        }
    }

%>
<br/>
<form action="logout.jsp">
    <input type="submit" value="logout">
</form>
</body>
</html>
