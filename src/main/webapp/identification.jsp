<%@ page  errorPage="/WEB-INF/error.jsp" import="com.example.boitemessagerie.*"%>
<%@ include file="/WEB-INF/jspf/navigation.jspf" %>
<span style="font-family: Arial,serif; ">
    <div align="center">
        <form action="./bienvenue.jsp">
            <label> Email :</label>
            <input type="text" name="email"> <br> <br>
            <label> Mot De Passe :</label>
            <input type="password" name="password"> <br> <br>
            <input type="submit">
        </form>
    </div>

</span>
<%@include file="WEB-INF/jspf/pieds.jspf"%>
