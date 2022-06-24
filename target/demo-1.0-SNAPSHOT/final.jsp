<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.demo.Clan" %>
<%@ page import="com.example.demo.Tim" %><%--
  Created by IntelliJ IDEA.
  User: mijod
  Date: 4/24/2021
  Time: 2:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (request.getMethod().toString().equals("POST")) {
        String imena[] = request.getParameterValues("ime");
        String prezimena[] = request.getParameterValues("prezime");
        String emailovi[] = request.getParameterValues("email");
        String pozicije[] = request.getParameterValues("pozicija");
        ArrayList<Clan> clanovi = new ArrayList<>();
        Clan clan;
        for (int i = 0; i < (Integer) session.getAttribute("brClanova"); i++) {
            //System.out.println(imena[0]);
            //System.out.println(prezimena[0]);
            clan = new Clan();
            clan.setIme(imena[i]);
            clan.setPrezime(prezimena[i]);
            clan.setEmail(emailovi[i]);
            clan.setPozicija(pozicije[i]);
            clanovi.add(clan);
        }
        Tim t = (Tim) session.getAttribute("tim");
        //System.out.println(t.getNaziv());
        t.setClanovi(clanovi);
        t.toFile();
        session.setAttribute("timPrijavljen", "prijavljen");
    }
%>
<html>
<head>
    <title>Final</title>
    <%@include file="styles.jsp" %>
    <link rel="stylesheet" href="prijavecss.css">
</head>
<body>
<%@ include file="header.jsp" %>
<div class="header">
    <h1>Hvala na prijavi!</h1>
    <p>Drago nam je da ucestvujete, <%=session.getAttribute("tim")%>
    </p>

</div>

</div>
</body>
</html>
