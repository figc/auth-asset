<%
if (request.getParameter("error") != null) {
	out.println("<p><font color=red><b>problem logging in<b></font></p>");
}
%>

<form method="POST" action="<%=request.getContextPath()%>/j_security_check">
<table border="0" cellspacing=3 cellpadding=3>
	<tr>
		<td colspan="2">Login to the Tomcat-Demo application:</td>
	</tr>
	<tr>
		<td>Name:</td>
		<td><input type="text" name="j_username" value="guest1"/></td>
	</tr>
	<tr>
		<td>Password:</td>
		<td><input type="password" name="j_password" value="guest1password"/></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="Go" /></td>
	</tr>
</table>
</form>