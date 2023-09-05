<%@ page import="common.Person" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<%--    request영역은 현제 페이지와 forward된 페이지까지 공유된다.--%>
    <title>requests Scope</title>
</head>
<body>
    <%
        request.setAttribute("requestString", "request scope의 문자열");
        request.setAttribute("requestPerson", new Person("이숭원", 26));
//        request속성삭제
        request.removeAttribute("requestString");
        request.removeAttribute("requestInteger");//no error

    %>
    <h2>영역의 속성값 읽기</h2>
    <%
        Person rPerson = (Person) request.getAttribute("requestPerson");
    %>
    <ul>
        <li>rPerson 객체:<%=rPerson.getName()%>, <%=rPerson.getAge()%></li>
        <li>String 객체:<%=request.getAttribute("requestStirng")%></li>
    </ul>

<h2>포워드된 페이지에서 request 영역 속성값 읽기</h2>

<%
    request.getRequestDispatcher(
            "RequestForward.jsp?paramHan=한글&paramEng=English")
            .forward(request, response);

//    RequestDispatcher rd = request.getRequestDispatcher("...");

%>
<!--
request.getRequestDispatcher("포워드할 파일 경로").forward(request, response)
    Dispatcher는 다른 컴포넌트 간의 통신하며 데이터나 작업을 전달하거나 분배하는 메커니즘
    포워드시 예제처럼 쿼리스트링으로 매개변수 전달 가능.
    1.forwarding: 하나의 서블릿 또는 JSP페이지에서 요청을 다른 서블릿, JSP페이지 또는
    리소스로 전달. 서버 측에서만 이루어지는 작업(클라이언트의 브라우저는 그대로)
    2.including: 하나의 서블릿 또는 JSP페이지에서 요청을 다른 서블릿, JSP페이지 또는
    리소스를 포함하여 처리. 이 때, 포함되는 리소스 결과가 현재 페이지의 결과에 추가.
    클라이언트에게는 하나의 응답이 전달.
-->


</body>
</html>
