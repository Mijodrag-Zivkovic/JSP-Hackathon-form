<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% if (request.getParameter("tim") == null) {
    response.sendRedirect("/index.jsp");
    return;
} else if (request.getParameter("tim").equals("")) {
    response.sendRedirect("/prijave.jsp");
} else if (request.getMethod().toString().equals("POST")) {%>
<jsp:useBean id="tim" scope="session" class="com.example.demo.Tim"/>

<jsp:setProperty name="tim" property="naziv" param="tim"/>
<jsp:setProperty name="tim" property="email" param="email"/>
<jsp:setProperty name="tim" property="telefon" param="telefon"/>
<jsp:setProperty name="tim" property="moto" param="moto"/>
<jsp:setProperty name="tim" property="kako_ste_culi" param="kako ste culi"/>
<jsp:setProperty name="tim" property="brClanova" param="broj clanova"/>
<%
    }
%>

<html>
<head>
    <title>Clanovi</title>
    <%@include file="styles.jsp" %>
    <link rel="stylesheet" href="prijavecss.css">
</head>
<body>
<%@ include file="header.jsp" %>
<div class="header">
    <h1>Clanovi</h1>
    <p>Ovde upisi podatke o clanovima tima!</p>
</div>
<%! Integer brClanova;%>
<% brClanova = Integer.parseInt(request.getParameter("broj clanova"));%>
<% session.setAttribute("brClanova", brClanova); %>
<div class="div">
    <form action="final.jsp" method="POST">
        <%
            for (int i = 0; i < brClanova; i++) {
        %>
        <label for="ime">Ime</label>
        <input type="text" id="ime" name="ime" placeholder="Ime.." required>

        <label for="prezime">Prezime</label>
        <input type="text" id="prezime" name="prezime" placeholder="Prezime..">

        <label for="email">Email</label>
        <input type="text" id="email" name="email" placeholder="Email..">

        <label for="pozicija">Pozicija</label>
        <input type="text" id="pozicija" name="pozicija" placeholder="Pozicija..">
        <br>
        <%}%>
        <div class="divcenter">
            <input type="submit" value="Potvrdi">
        </div>
    </form>
</div>

</body>
</html>
