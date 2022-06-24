<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <%@include file="styles.jsp" %>
    <link rel="stylesheet" href="prijavecss.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
</head>
<style>
    body, h1, h2, h3, h4, h5, h6 {
        font-family: "Karma", sans-serif
    }

    .w3-bar-block .w3-bar-item {
        padding: 20px
    }
</style>
<body>
<%@ include file="header.jsp" %>
<div class="header">
    <h1>Dobrodosli na RAF hakaton!</h1>
    <p>Ovo je mesto radjanja dobrih ideja!</p>
</div>
<div>
    <img src="<%=application.getContextPath()%>/images/hakaton1.jpg" alt="Sandwich" style="width:100%"/>
</div>
<div class="w3-row-padding w3-padding-16 w3-center" id="food">
    <div class="w3-quarter">
        <img src="/images/hakaton1.jpg" alt="Sandwich" style="width:100%">
        <h3>The Perfect Sandwich, A Real NYC Classic</h3>
        <p>Just some random text, lorem ipsum text praesent tincidunt ipsum lipsum.</p>
    </div>
    <div class="w3-quarter">
        <img src="/images/hakaton2.png" alt="Steak" style="width:100%">
        <h3>Let Me Tell You About This Steak</h3>
        <p>Once again, some random text to lorem lorem lorem lorem ipsum text praesent tincidunt ipsum lipsum.</p>
    </div>
    <div class="w3-quarter">
        <img src="/images/hakaton3.jpg" alt="Cherries" style="width:100%">
        <h3>Cherries, interrupted</h3>
        <p>Lorem ipsum text praesent tincidunt ipsum lipsum.</p>
        <p>What else?</p>
    </div>
    <div class="w3-quarter">
        <img src="/images/hakaton4.png" alt="Pasta and Wine" style="width:100%">
        <h3>Once Again, Robust Wine and Vegetable Pasta</h3>
        <p>Lorem ipsum text praesent tincidunt ipsum lipsum.</p>
    </div>
</div>


</body>
</html>