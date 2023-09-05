<html>
<head>
    <title>login page</title>
    <meta charset="UTF-8">
    <style>
        #login_form{
            padding: 10px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            text-align: center;
            background-color: cyan;
        }
    </style>
    <script type="text/javascript">
        function check_login() {
            var frmLogin = document.frmLogin;
            var id = frmLogin.id.value;
            var pw = frmLogin.pw.value;

            if (id == "" || pw == "") {
                alert("input id or pw");
                return;
            }
            frmLogin.action = "cookieEx.jsp";
            frmLogin.method = "post";
            frmLogin.submit();
        }

    </script>
</head>
<body>
    <div id="login_form">
        <form action="cookieEx.jsp" method="post" name="frmLogin">
            id: <input type="text" name="id"><br/>
            pw: <input type="password" name="pw"><br/>
            <input type="submit" value="sLogin">
            <input type="button" value="login" onclick="check_login()"><br/>
        </form>
    </div>

    <form action="signIn.jsp" method="post">
        <input type="submit" value="sign in">
    </form>
</body>
</html>
