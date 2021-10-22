<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Parimal's Home Page</title>
</head>
<body>
<h2>Codersage Home Page</h2>
<hr>
Welcome to the home page!
<br/>
<hr>

<!-- display user name and role -->

<hr>
<hr>
<sec:authorize access="isAuthenticated()">
    User: <security:authentication property="principal.username" /><br><br>
    Role(s): <security:authentication property="principal.authorities" /></sec:authorize>
</hr>
<p>
    <security:authorize access="hasRole('ADMIN')">
        <a href="${pageContext.request.contextPath}/admin">Admin</a>
    </security:authorize>
    <br/>
    <security:authorize access="hasRole('GUEST')">
        <a href="${pageContext.request.contextPath}/guest">Guest</a>
    </security:authorize>
</p>
<hr>
<form:form action="${pageContext.request.contextPath}/logout"
           method="POST">
    <input type="submit" value="logout"/>
</form:form>
<hr>

</body>
</html>