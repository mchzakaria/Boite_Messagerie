<%@ page  errorPage="/WEB-INF/error.jsp"%>
<%@ include file="/WEB-INF/jspf/navigation.jspf" %>
<br>
<span style="font-family: Arial,serif; ">
    <div align="center">
       <form action="Verification.jsp" method="GET">
            <label> Nom :</label>
            <input type="text" name="nom"> <br> <br>
            <label> Prenom :</label>
            <input type="text" name="prenom"> <br> <br>
            <label> Email :</label>
            <input type="text" name="email"> <br> <br>
            <label> Mot De Passe :</label>
            <input type="password" name="password"> <br> <br>
            <input type="submit">
        </form>
    </div>
</span>
<%@include file="WEB-INF/jspf/pieds.jspf"%>
