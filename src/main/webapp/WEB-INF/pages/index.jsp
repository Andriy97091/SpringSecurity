<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 03.07.2017
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h2>Index Page</h2>

<form action="registration" method="post">
    <input type="text" name="username" placeholder="name">
    <input type="password" name="password" placeholder="*****">
    <input type="submit" value="registration">
    <input type="hidden"
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
</form>

<a href="toLogin">login page</a>

</body>
</html>
