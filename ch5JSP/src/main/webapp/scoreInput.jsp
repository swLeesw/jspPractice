<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>점수 입력창</title>
</head>
<script type="text/javascript">
    function jCheckNumber() {
        var grade = document.grade;
        var score = grade.score.value;
        for (var i = 0; i < score.length; i++) {
            if (score[i] > '9' || score[i] < '0') {
                alert("숫자만 입력해주세요.");
                return;
            }
        }
        grade.action = "grade_result.jsp";
        grade.method = "post";
        grade.submit();
    }

</script>
<body>
    <form name="grade" action="grade_result.jsp" method="post">
        시험점수: <input type="text" name="score"/><br/>
        num시험점수: <input type="number" name="nScore"/><br/>
        <input type="submit" value="s학점보기"/>
        <input type="button" onclick="jCheckNumber()" value="j학점보기"/>
    </form>
</body>
</html>
