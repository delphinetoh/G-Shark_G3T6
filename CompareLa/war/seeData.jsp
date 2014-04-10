<%@ page import="datamanager.*,entity.*,java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../jquery.mobile-1.4.1/jquery.mobile-1.4.1.min.css">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.1/jquery.mobile-1.4.1.min.js"></script>

<style>
p {
	text-align:center;
	font-weight:bold;
	font-size: 12px;
}

h1 {
	text-align:center;
	font-weight:bold;
}

</style>

</head>
<body>

<h1>Here's the Data Collected!</h1>

<table border="1" align="center" style="font-size: 12px;">
<tr><th>S/N</th><th>Participant Name</th>
<th>Button Task1 Time</th><th>Button Task1 Ans</th><th>Button Task2 Time</th><th>Button Task2 Ans</th><th>Button Task3 Time</th><th>Button Task3 Ans</th>
<th>Flip Task1 Time</th><th>Flip Task1 Ans</th><th>Flip Task2 Time</th><th>Flip Task2 Ans</th><th>Flip Task3 Time</th><th>Flip Task3 Ans</th>
</tr>
<%
List<DataCollected> list = DataCollectedDAO.retrieveAll();
for (int i = 0; i < list.size(); i++) {
	DataCollected d = list.get(i);
%>
	<tr>
		<td><%=i+1%></td>
		<td><%=d.getParticipantName()%></td>
		<td><%=d.getButtonTask1Time()%></td>
		<td><%=d.getButtonTask1Ans()%></td>
		<td><%=d.getButtonTask2Time()%></td>
		<td><%=d.getButtonTask2Ans()%></td>
		<td><%=d.getButtonTask3Time()%></td>
		<td><%=d.getButtonTask3Ans()%></td>
		<td><%=d.getFlipTask1Time()%></td>
		<td><%=d.getFlipTask1Ans()%></td>
		<td><%=d.getFlipTask2Time()%></td>
		<td><%=d.getFlipTask2Ans()%></td>
		<td><%=d.getFlipTask3Time()%></td>
		<td><%=d.getFlipTask3Ans()%></td>
	</tr>
<%
}
%>
</table>
<br><br>
<h1>Here's the Questionnaire Results!</h1>

<table width="95%" border="1" align="center" style="font-size: 12px;">
<tr>
<th>S/N</th>
<th>Participant Name</th>
<th>Which layout do you prefer for the Compare page?</th>
<th>What do you like about your preferred layout?</th>
<th>What improvements do you think can be made to your preferred layout?</th>
<th>What do you dislike about your rejected layout?</th>
<th>What improvements do you think can be made to your rejected layout?</th>
<th>Any last comments with regards to the rest of the CompareLa! application?</th>
</tr>
<%
List<Questionnaire> qList = QuestionnaireDAO.retrieveAll();
for (int i = 0; i < qList.size(); i++) {
	Questionnaire q = qList.get(i);
%>
	<tr>
		<td><%=i+1%></td>
		<td><%=q.getParticipantName()%></td>
		<td><%=q.getQ1()%></td>
		<td><%=q.getQ2()%></td>
		<td><%=q.getQ3()%></td>
		<td><%=q.getQ4()%></td>
		<td><%=q.getQ5()%></td>
		<td><%=q.getQ6()%></td>
	</tr>
<%
}
%>
</table>
</body>
</html>