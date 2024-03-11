<%@ page import="com.example.boitemessagerie.Personne" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/jspf/navigation.jspf" %>
<%
    Personne p1 = new Personne();
    p1.setNom(request.getParameter("nom"));
    p1.setPrenom(request.getParameter("prenom"));
    p1.setEmail(request.getParameter("email"));
    p1.setPassword(request.getParameter("password"));
    p1.add();
%>
<br><br>
    <div align="center">
        <label> Nom : </label>
        <input type="text" disabled value="<%= p1.getNom()%>"> <br> <br>
        <label> Prenom : </label>
        <input type="text" disabled value="<%= p1.getPrenom()%>"> <br> <br>
        <label> Email : </label>
        <input type="text" disabled value="<%= p1.getEmail()%>"> <br> <br>
    </div>


<%@include file="WEB-INF/jspf/pieds.jspf"%>