<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>choice</title>
</head>
<body>

    <%
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=utf-8");

        String name = request.getParameter("name");
        int score = Integer.parseInt(request.getParameter("score"));

        Cookie cookie = new Cookie();

        if (score < 0 || score > 100) {
            %>
            점수를 잘 못 입력하셨습니다.
            <%
        }
        else if (score >= 60) {
            response.sendRedirect("success.jsp");
        }
        else {
            response.sendRedirect("fail.jsp");
        }

    %>

</body>
</html>
