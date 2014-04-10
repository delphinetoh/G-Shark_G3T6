<!DOCTYPE html>
<html>
<head>


<style>
p {
	font-family: tahoma;
	text-align:center;
	font-weight:bold;
	font-size: 12px;
}

h1 {
	font-family: tahoma;
	text-align:center;
	font-weight:bold;
}

</style>

</head>
<body>

<br><br><br>
<h1>Hello <%=request.getParameter("name")%>!</h1>

<p>
First of all, a big thank you for sparing us some of your time to complete this web experiment!<br><br>
Here's some information about this web experiment you are about to embark on!
</p>
<br>

<table align="center" width="45%" style="font-size: 12px;font-family:tahoma;">
	<tr>
	<td valign="top" style="font-weight:bold;">Investigators:&nbsp;&nbsp;</td><td>Abdul Basith, Cheng Kah Him, Delphine Toh, Lee Jong Hyeok, Nicholas Lee <br>(G3T6 G-Shark)</td>
	</tr>
	<tr>
	<td valign="top" style="font-weight:bold;">Project Description:&nbsp;&nbsp;</td><td>CompareLa! is an application for users to conveniently compare 2 items with all the relevant information based on a set of criteria and recommend the "better" product to them, making their shopping experience a more pleasant one.  You will be asked to perform a series of tasks with the CompareLa! application on a web application built for mobile, as well as complete a questionnaire on your thoughts about the application after the experiment.
	</td>
	</tr>
</table>
<br>
<p>
I agree to let the investigators collect and collate data collected during the web experiment which I am about to start on.<br>
I understand that I may discontinue participation at any time without penalty.
I declare that I am at least 18 years old.
</p>

<%
String type = request.getParameter("type");
%>

<div align="center" style="font-size: 12px;font-family:tahoma;">
	<form action="consent">
	<input type="hidden" name="type" value="<%=type%>">
	<input type="radio" name="agree" value="yes" checked>Yes
	<input type="radio" name="agree" value="no">No
	<input type="submit" value="Submit">
	</form>
</div>

</body>
</html>