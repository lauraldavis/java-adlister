<%--
  Created by IntelliJ IDEA.
  User: ldavis
  Date: 7/14/20
  Time: 3:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setAttribute("isAdmin", true); %>
<% request.setAttribute("myTasks", new String[]{"Todo 1", "Todo 2", "Todo 3"}); %>
<html>
<head>
    <title>To Do List</title>
</head>
<body>
    <h1>Welcome to your ToDolist:</h1>

    <c:choose>
        <c:when test="${isAdmin}">
<%--            <p>You are viewing this as an Admin.</p>--%>
            <%@ include file="partials/admin-nav.jsp" %>
            <ul>
                <c:forEach items="${myTasks}" var="task">
                    <li>${task}</li>
                </c:forEach>
            </ul>
        </c:when>
        <c:otherwise>
<%--            <p>Move along now...</p>--%>
            <%@ include file="partials/navbar.jsp" %>
        </c:otherwise>
    </c:choose>

    <p><%= request.getParameter("item") %></p>
    <p><%= request.getMethod() %></p>

</body>
</html>
