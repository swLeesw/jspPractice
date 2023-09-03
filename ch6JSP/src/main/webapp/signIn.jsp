<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>signIn</title>
</head>
    <form enctype="utf-8">
        name : <input type="text" name="name" required="required"><br/>
        id : <input type="text" name="id" required="required"><br/>
        password : <input type="text" name="pw" required="required"><br/>
        hobby :
        <input type="checkbox" name="hobby" value="reading">reading
        <input type="checkbox" name="hobby" value="cycle">cycle
        <input type="checkbox" name="hobby" value="running">runnding
        <input type="checkbox" name="hobby" value="studying">studying<br/>
        major :
        <input type="radio" name="major" value="computer" checked="checked">computer
        <input type="radio" name="major" value="design">design
        <input type="radio" name="major" value="english">english<br/>
        gender :
        <input type="radio" name="gender" value="male" checked="checked">male
        <input type="radio" name="gender" value="female">female<br/>
        job : <select name="job">
            <option value="worker">worker</option>
            <option value="student">student</option>
            <option value="other">other</option>
        </select><br/>
        <input type="submit" value="sign in"><br/>
        <input type="reset" value="reset">
    </form>
</body>
</html>
