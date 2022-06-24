<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if (session.getAttribute("timPrijavljen") != null) {
        response.sendRedirect("/final.jsp");
        return;
    }
%>

<html>
<head>
    <title>Prijave</title>
    <%@include file="styles.jsp" %>
    <link rel="stylesheet" href="prijavecss.css">
</head>
<body>
<%@ include file="header.jsp" %>
<div class="header">
    <h1>Prijave</h1>
    <p>Prijavi svoj tim ovde!</p>
</div>

<div class="div">
    <form action="clanovi.jsp" method="POST">
        <label for="tim">Naziv tima</label>
        <input type="text" id="tim" name="tim" placeholder="Naziv tima.." required>

        <label for="email">Email</label>
        <input type="text" id="email" name="email" placeholder="Email..">

        <label for="telefon">Kontakt telefon</label>
        <input type="text" id="telefon" name="telefon" placeholder="Kontakt telefon..">

        <label for="moto">Moto tima</label>
        <input type="text" id="moto" name="moto" placeholder="Moto..">

        <label for="kako ste culi">Kako ste culi za hakaton?</label>
        <select id="kako ste culi" name="kako ste culi">
            <option value="oglas">Oglas</option>
            <option value="prijatelj">Preko prijatelja</option>
        </select>

        <label for="broj clanova">Broj clanova tima</label>
        <select id="broj clanova" name="broj clanova">
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
        </select>
        <div class="divcenter">
            <input type="submit" value="Clanovi">
        </div>

    </form>
</div>

</body>
</html>
