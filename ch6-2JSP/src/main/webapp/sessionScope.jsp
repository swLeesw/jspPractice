<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    ArrayList<String> lists = new ArrayList<String>();
    lists.add("리스트");
    lists.add("컬렉션");
    session.setAttribute("lists", lists);
%>

<html>
<head>
    <title>Session영역</title>
</head>
<body>
    <h2>페이지 이동 후 session 영역의 속성 읽기</h2>
    <a href="pageSession.jsp">go to session Page</a>
</body>
</html>
