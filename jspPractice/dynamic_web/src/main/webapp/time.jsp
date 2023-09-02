<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: seungwonlee
  Date: 2023-08-14
  Time: 오후 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <%-- <% %> 스크립트릿이라고 한다. JSP파일에서 자바코드를 삽입할 때 반드시 표기를 해야한다. --%>
    <%
        Calendar calendar = Calendar.getInstance();
        int hour = calendar.get(Calendar.HOUR_OF_DAY);
        int minute = calendar.get(Calendar.MINUTE);
        int second = calendar.get(Calendar.SECOND);
    %>
</head>
<body>
<%-- <%= %> <--스크립트릿의 일종으로 표현식(expression)이다.
           단, 값을 나타내고자 할 때 사용을 한다. ;을 붙이면 안된다--%>
    <h1>현재 시간 : <%=hour%>시 <%=minute%>분 <%=second%>초</h1>
</body>
</html>
