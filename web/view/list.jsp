<%@ page import="java.util.List" %>
<%@ page import="app.entities.User" %><%--
  Created by IntelliJ IDEA.
  User: Антон
  Date: 25.02.2019
  Time: 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users</title>
</head>

<body>
<div>
    <h1>Super app!</h1>
</div>

<div>
    <div>
        <div>
            <h2>Users</h2>
        </div>
        <%
            List<User> logins = (List<User>) request.getAttribute("userLogins");
            if(logins != null && !logins.isEmpty()) {
                for (User s:logins){
                    out.println("<li>" + s + "</li>");
                }
            }
        %>
    </div>
</div>

<div>
    <button onclick="location.href='/'">Back to main</button>
</div>
</body>
</html>