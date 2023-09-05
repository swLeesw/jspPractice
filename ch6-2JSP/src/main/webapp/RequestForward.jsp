<%@ page import="common.Person" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Person rPerson = (Person) request.getAttribute("requestPerson");
    %>
    rPerson in RequestForward.jsp: <%=rPerson.getName()%>, <%=rPerson.getAge()%>
</body>
</html>
