<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>include지시자</title>
</head>
<body>
    <h1>includeOrder.jsp페이지</h1>
<%--    include페이지 지시자를 이용해서 include.jsp를 부르고 있다.(포함시킨다.)
        footer같이 아래에 중복으로 보여지는 부분을 include로 부른다.--%>
    <%@include file="include.jsp"%>
    <h1>다시 includeOrder페이지입니다.</h1>
</body>
</html>
