<!--페이지 지시자이다. 페이지 속성이나 import할 때 자주 사용한다.-->
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <%--    http://ip주소:포트번호/JSP파일이름  을 치면 됨--%>
    <title>firstJSP</title>
<%--    CSS가 들어가는 공간--%>
    <style>

    </style>
<%--        javaScript가 들어가는 공간--%>
    <script type="text/javascript">
        function fun_validate() {

            var logIn  = document.logIn;
            var id = logIn.id.value;
            var pw = logIn.pw.value;

            if (id.length == 0 || pw.length == 0) {
                alert("아이디 혹은 비밀번호를 입력하세요.");
            }
            else {
                logIn.action ="/LG";
                logIn.method = "post";
                logIn.submit();
            }
        }
    </script>

</head>
<body>
    <%//java code가 들어가는 공간.



    %>
    <h1>hello jsp!!</h1>
    <form name="logIn" action="/LG" method="post">
        id<input type="text" name="id"><br/>
        pw<input type="text" name="pw"><br/>
        <input type="button" onclick="fun_validate()" value="jLogin"><br/>
        <input type="submit" value="sLogin">
    </form>


</body>
</html>
