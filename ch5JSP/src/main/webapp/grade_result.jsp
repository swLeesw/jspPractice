<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
%>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String score1 = request.getParameter("score");
        String nScore = request.getParameter("nScore");
        if (!score1.isEmpty()) {//score1 == ""이것도 가능.
            int score1Int = Integer.parseInt(score1);
    %>
    점수: <%=score1Int%>
    <%
        }
        else {
            int nScoreInt = Integer.parseInt(nScore);
    %>
    점수: <%=nScoreInt%>
    <%
        }
    %>
</body>
</html>
