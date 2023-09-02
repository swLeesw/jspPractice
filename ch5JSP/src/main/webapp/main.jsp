<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
        function fun_val() {
            var frmLogin = document.frmLogin;
            var id = frmLogin.id.value;
            var pw = frmLogin.pw.value;
            if (id.length == 0 || pw.length == 0) {
                alert("아이디 혹은 비밀번호를 입력해주세요.")
                return;
            }
            frmLogin.action = "result.jsp";
            frmLogin.method = "post";
            frmLogin.submit();
        }

    </script>
</head>
<body>
    <form name="frmLogin" action="result.jsp" method="post" enctype="utf-8">
        아이디: <input type="text" name="id"><br/>
        패스워드: <input type="text" name="pw"><br/>
        <input type="submit" value="s로그인">
        <input type="button" onclick="fun_val()" value="j로그인">
    </form>
</body>
</html>
