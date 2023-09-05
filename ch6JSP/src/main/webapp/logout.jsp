
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>logout</title>
</head>
<body>
    <%
        Cookie[] cookies = request.getCookies();

        if (cookies != null) {
            for (int i = 0; i < cookies.length; i++) {
                String id = cookies[i].getValue();

                if (id.equals("seungwon")) {
                    cookies[i].setMaxAge(0); //쿠키의 유효기간 바로 끝나므로, 쿠키가 삭제된다.
                    response.addCookie(cookies[i]);//쿠키가 변경되었으니 다시 탑재
                    out.print(id + " logged out");
                }
            }
        }

    %>
</body>
</html>
