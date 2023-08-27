<%@ page import="java.util.Calendar" %>
<%--java코드 작성을 가능하게 해주는 키워드 <%@ %>
jsp는 기본적으로 html파일, servlet은 java파일이니 기억
client는 view, WAS(Tomcat)은 controller,, DB는 Model로 MVC패턴이 만들어짐
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
<h1><%=hour%> : <%=minute%> : <%=second%></h1>
</body>
</html>
