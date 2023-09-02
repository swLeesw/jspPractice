<!--
language속성 : 스크립트 요소에서 사용할 언어 설정
extend속성: 상속받을 클래스를 설정
import속성: import할 패키지, 클래스를 설정
session속성: HttpSession사용 여부를 결정
buffer속성: jsp페이지에서 출력 버퍼 크기를 설정
autoFlush속성: 버퍼가 꽉 찼을 경우 처리방법 설정
isTreadSafe속성: 다중 스레드에 동시 실행 여부 설정
info속성: 페이지 설명
contentType속성: jsp 페이지가 생성할 문서의 타입을 지정
isErrorPage속성: 현재 페이지를 error페이지로 지정할 것인지 설정(error가 뜰 때 보여줄 페이지)
PageEncoding속성: 현재 페이지의 문자의 인코딩 타입 설정
-->
<%@ page import="java.util.Calendar"%>
<%@ page import="java.sql.Time" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>스크립트릿</title>
</head>
<body>
    <%
        for (int i = 1; i < 10; i++) {
            out.println("3 * " + i + " = " + 3 * i);
    %>
    =====================================<br/>
    <%
        }
        Calendar calendar = Calendar.getInstance();
        int second = calendar.get(Calendar.SECOND);
    %>
    현재 초: <%=second %>초입니다. <br/>
    <%
        if (second % 2 == 0) {
    %>
    짝수
    <%
        }
        else {
    %>
    홀수
    <%
        }
    %>

</body>
</html>
