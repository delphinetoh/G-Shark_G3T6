<!DOCTYPE html>
<html>
<head>

<style>
h1 {
text-align:center;
font-weight:bold;
font-family: century gothic;
}

p {
text-align:center;
color:red;
font-family: century gothic;
}
</style>

</head>
<body>

<br>
<h1>WELCOME TO COMPARELA! :)</h1>

<br>
<center><img src="../images/comparela_logo.png"  height="180" width="180"></center>
<br><br>
<div align="center" style="font-family:century gothic;">
	<table>
	<form action="/login">
		<tr><td>
			<label for="name">Name:</label>
		</td><td>
			<input type="text" name="name" id="name">
		</td></tr>
		<tr><td>
			<label for="passcode">Passcode:</label>
		</td><td>
			<input type="password" name="passcode" id="passcode">
		</td></tr>
		<tr><td></td><td>
			<input type="submit" value="Login">
		</td></tr>
	</form>
	</table>
	<%
	String login = request.getParameter("login");
	if (login != null) { %>
		<p>Sorry, wrong passcode!</p>
	<%	
	}
	%>
</div>


</body>
</html>