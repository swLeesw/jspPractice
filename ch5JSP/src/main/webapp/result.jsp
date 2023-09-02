<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인 결과</title>
</head>
<body>
    <h1>결과 출력</h1>
    <%
        request.setCharacterEncoding("utf-8");
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        if (id.equals("seungwon")) {
    %>
    관리자모드입니다.<br/>
    <%
        }
    %>
    아이디: <%=id%> <br/>
    비밀번호: <%=pw%> <br/>
    <a href="main.jsp">로그인 페이지로 이동</a>
</body>
</html>
