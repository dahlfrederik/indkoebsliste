<%--
  Created by IntelliJ IDEA.
  User: FrederikDahl
  Date: 02/03/2020
  Time: 11.27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Webshop</title>
</head>
<body>
<h1> Velkommen til din webshop </h1>
<br>
${sessionScope.besked}
<br>

${requestScope.besked}
<br>

<form action="loginServlet" method="post">
    <label for="fname">Brugernavn:</label><br>
    <input type="text" id="fname" name="brugernavn" ><br>
    <label for="lname">Kodeord:</label><br>
    <input type="text" id="lname" name="kodeord" ><br><br>
    <input type="submit" value="Login">
</form>

</body>
</html>
