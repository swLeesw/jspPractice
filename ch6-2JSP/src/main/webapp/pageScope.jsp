<%@ page import="common.Person" %>
<%@ page import="javax.naming.Context" %>
<!-- common.Person.class 임포트 -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    pageContext.setAttribute("pageInteger", 1000);
    pageContext.setAttribute("pageString", "페이지 영역의 문자열");
    pageContext.setAttribute("pagePerson", new Person("suckBong", 51));

    String adminId = request.getServletContext().getInitParameter("admin_id");
    int adminPw = Integer.parseInt(request.getServletContext().getInitParameter("admin_pw")); //web.xml에 선언한 context-param
    int pageInteger = (int)pageContext.getAttribute("pageInteger");
    String pageString = pageContext.getAttribute("pageString").toString();
    Person pagePerson = (Person)pageContext.getAttribute("pagePerson");
%>
<h2>pageScope.jsp</h2>
<ul>
    <li>contextParamId: <%=adminId%></li>
    <li>contextParamPw: <%=adminPw%></li>
    <li>pageString: <%=pageString%></li>
    <li>pageInteger: <%=pageInteger%></li>
    <li>pagePerson: <%=pagePerson%></li>
</ul>
<br/>
<!--include된 파일에 pageScope의 attribute가 사용될 수 있다.-->
<%@include file="pageInclude.jsp"%> <!--주로 footer에서 많이 쓰임-->


</body>
</html>
