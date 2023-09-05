<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String adminId2 = request.getServletContext().getInitParameter("admin_id");
    int adminPw2 = Integer.parseInt(request.getServletContext().getInitParameter("admin_pw")); //web.xml에 선언한 context-param
    int pageInteger2 = (int)pageContext.getAttribute("pageInteger");
    String pageString2 = pageContext.getAttribute("pageString").toString();
    Person pagePerson2 = (Person)pageContext.getAttribute("pagePerson");
%>
<h2>pageInclude.jsp</h2>
<ul>
    <li>contextParamId: <%=adminId2%></li>
    <li>contextParamPw: <%=adminPw2%></li>
    <li>pageString: <%=pageString2%></li>
    <li>pageInteger: <%=pageInteger2%></li>
    <li>pagePerson: <%=pagePerson2%></li>
</ul>
<br/>
</body>
</html>
