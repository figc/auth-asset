<%@page import="org.apache.catalina.realm.GenericPrincipal"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html>
<head>
<title><bean:message key="welcome.title"/></title>
<html:base/>
</head>
<body bgcolor="white">

<logic:notPresent name="org.apache.struts.action.MESSAGE" scope="application">
  <font color="red">
    ERROR:  Application resources not loaded -- check servlet container
    logs for error messages.
  </font>
</logic:notPresent>

<h3><bean:message key="welcome.heading"/></h3>
<p><bean:message key="welcome.message"/></p>

In role : <%=request.isUserInRole("*")%>

<br>Has Role :
<%=((GenericPrincipal)request.getUserPrincipal()).hasRole("*")%>

<br> Principal :
<%=((GenericPrincipal)request.getUserPrincipal()).getPassword()%>

<%session.invalidate();%>

<br>
<a href="<%=request.getContextPath()%>/index.html">Log out</a>

</body>
</html:html>
