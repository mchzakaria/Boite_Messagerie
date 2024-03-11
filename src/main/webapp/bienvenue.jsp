<%@ page  errorPage="/WEB-INF/error.jsp" import="com.example.boitemessagerie.*"%>
<%
    String nom = request.getParameter("nom");
    String prenom = request.getParameter("prenom");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    Personne p1 = new Personne();
    p1.setNom(nom);p1.setPrenom(prenom);p1.setEmail(email);p1.setPassword(password);
    String result = p1.check();
    if(result==null){
        throw new Exception("something wrong here");
    }
    else{

        %>

<%@ include file="/WEB-INF/jspf/navigation.jspf" %>
<span style="font-family: Arial,serif; ">
<p><table border="1" cellspacing="3" cellpadding="2" width="90%" align="center">
    <tr bgcolor="#FF6600">
        <th>Sujet</th>
        <th>Message</th>
    </tr>
    <%
        ListeMessages listeMessages = new ListeMessages(Integer.parseInt(result));
        int ligne = 0 ;
            while(listeMessages.suivant()){
    %>
    <tr bgcolor="<%= ligne++ % 2 == 0 ? "#FFFF66" : "#FFCC00" %>">
        <td><b><%= listeMessages.sujet() %></b></td>
        <td><%= listeMessages.texte()%></td>
    </tr>
    <%
        }
        listeMessages.arret();
    %>
</table></p>
</span>
<%@include file="WEB-INF/jspf/pieds.jspf"%>
<%
    }
%>