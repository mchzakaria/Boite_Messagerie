<%@page isErrorPage="true"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="jspf/navigation.jspf"%>
<div style="text-align: center;">
    <h1><span style="color: red; ">Erreur...</span></h1>
    <p>Votre demande n"a pu aboutir.</p>
    <p>Merci de signaler les circonstances de cet incident au webmaster
    <br> de ce site en lui transmettant le texte d"erreur qui suit :</p>
    <p><b><%=exception%>></b></p>
</div>

<%@ include file="jspf/pieds.jspf"%>