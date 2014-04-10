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

<br><br><br>
<h1>THANK YOU FOR YOUR PARTICIPATION!</h1>
<h1>WE'RE ETERNALLY GRATEFUL :)</h1>
<br><br>
<center><img src="../images/comparela_logo.png"  height="180" width="180"></center>

<%
session.removeAttribute("type");

String name = (String) session.getAttribute("name");
String buttonTask1Time = (String) session.getAttribute("button-task1");
String buttonTask2Time = (String) session.getAttribute("button-task2");
String buttonTask3Time = (String) session.getAttribute("button-task3");
String flipTask1Time = (String) session.getAttribute("flip-task1");
String flipTask2Time = (String) session.getAttribute("flip-task2");
String flipTask3Time = (String) session.getAttribute("flip-task3");

String buttonTask1Ans = (String) session.getAttribute("button-task1-ans");
String buttonTask2Ans = (String) session.getAttribute("button-task2-ans");
String buttonTask3Ans = (String) session.getAttribute("button-task3-ans");
String flipTask1Ans = (String) session.getAttribute("flip-task1-ans");
String flipTask2Ans = (String) session.getAttribute("flip-task2-ans");
String flipTask3Ans = (String) session.getAttribute("flip-task3-ans");

DataCollected d = new DataCollected(name, buttonTask1Time, buttonTask1Ans, buttonTask2Time, buttonTask2Ans, buttonTask3Time, buttonTask3Ans, flipTask1Time, flipTask1Ans, flipTask2Time, flipTask2Ans, flipTask3Time, flipTask3Ans);
DataCollectedDAO.add(d);
%>

</body>
</html>