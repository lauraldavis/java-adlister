<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Profile</title>
</head>
<body>

    <p>This is your Profile</p>
    <h1>Hi, <%= request.getParameter("username")%></h1>
<%--    same as--%>
    <h1>Hi, ${param.username}</h1>
    <h3>${paramValues}</h3>
</body>
</html>