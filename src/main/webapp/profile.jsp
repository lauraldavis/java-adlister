<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <% request.setAttribute("title", "My Profile"); %>
    <%@ include file="partials/head.jsp" %>
</head>
<body>
<%@ include file="partials/navbar.jsp" %>

<div class="container">
    <p>Welcome, Admin!</p>
    <h1>Your profile</h1>
    <ul>
        <li>item 1</li>
        <li>item 2</li>
        <li>item 3</li>
    </ul>
</div>

</body>
</html>
