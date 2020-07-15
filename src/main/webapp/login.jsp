<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equalsIgnoreCase("admin") && password.equals("password")) {
            response.sendRedirect("/profile.jsp");
        } else {
            response.sendRedirect("/login.jsp");
        }
    }
%>

<html>
<head>
    <% request.setAttribute("title", "Login"); %>
    <%@ include file="partials/head.jsp" %>
</head>
<body>
<%@ include file="partials/navbar.jsp" %>
<div class="container">
    <h1>Welcome! Please login:</h1>
    <form action="/login.jsp" method="POST">
        <div class="form-group">
            <label for="username" class="form-label">Username</label>
            <input type="text" id="username" name="username" class="form-control">
        </div>
        <div class="form-group">
            <label for="password" class="form-label">Password</label>
            <input type="password" id="password" name="password" class="form-control">
        </div>
        <button type="submit" class="btn btn-block">Login</button>
    </form>
</div>

<%@ include file="partials/footer.jsp" %>

</body>
</html>
