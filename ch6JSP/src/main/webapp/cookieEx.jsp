<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    String id, pw;
%>
<%
    System.out.println("cookieExPage");
    request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html; charset=utf-8");

    id = request.getParameter("id");
    pw = request.getParameter("pw");

    if (id.equals("seungwon") && pw.equals("2560")) {
        Cookie cookie = new Cookie("id", id);//쿠키의 name은 id, value은 seungwon
        cookie.setMaxAge(120);//cookie의 유효시간은 120초
        response.addCookie(cookie);

        response.sendRedirect("login_success.jsp");
    }
    else {
        response.sendRedirect("login_fail.jsp");
    }

%>


</body>
</html>
