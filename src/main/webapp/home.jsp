<%--
  Created by IntelliJ IDEA.
  User: ldavis
  Date: 7/14/20
  Time: 1:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! String firstname = "Laura"; %>
<%! String lastname = "Davis"; %>

<%--parameter--%>
 <%! int myNumber = 1; %>
<%--attribute - give the ability to send a non-string parameter as an object--%>
<% request.setAttribute("number", myNumber); %>
<% request.setAttribute("title", "My JSP Home Page"); %>

<% String firstname = request.getParameter("firstname"); %>
<%
    if (firstname != null) {
        if (firstname.equalsIgnoreCase("Laura")) {
            response.sendRedirect("/index.jsp");
        }
    }
%>

<html>
<head>
    <title>${title}</title>
</head>
<body>

    <h1>Welcome!</h1>
    <%@ include file="partials/navbar.jsp" %>
    <%@ include file="partials/aboutme.jsp" %>
    <h1>Hello, <%= firstname + " " + lastname %></h1>

    <h3>View Your Profile</h3>
    <form action="/practiceprofile.jsp" method="get">
        <input type="hidden" id="username" name="username" value="Sophie">
        <button type="submit">Go There</button>
    </form>

    <h3>Add a To Do</h3>
    <form action="/todo.jsp" method="post">
        <input type="text" id="item" name="item">
        <button type="submit">Add To List</button>
    </form>

    <%@ include file="partials/footer.jsp" %>


    <%--    Expression Language--%>
    <h1>Welcome To The Site!</h1>
    <p>Path: <%= request.getRequestURL() %>
    </p>
    <p>Query String: <%= request.getQueryString() %>
    </p>
    <p>"name" parameter: <%= request.getParameter("name") %>
    </p>
    <p>"method" attribute: <%= request.getMethod() %>
    </p>
    <p>User-Agent header: <%= request.getHeader("user-agent") %>
    </p>

</body>
</html>
