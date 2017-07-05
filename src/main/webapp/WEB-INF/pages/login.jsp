<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h2>Logination</h2>
<form action="/login" method="post">
    <input type="text" name="username" placeholder="name">
    <input type="password" name="password" placeholder="*****">
    <input type="submit" value="loginOn">
    <input type="hidden"
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
</form>
</body>
</html>
