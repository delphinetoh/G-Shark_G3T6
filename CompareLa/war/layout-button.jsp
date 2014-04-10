<%@page import="app.*, entity.*, datamanager.*, java.util.*;" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- The HTML 4.01 Transitional DOCTYPE declaration-->
<!-- above set at the top of the file will set     -->
<!-- the browser's rendering engine into           -->
<!-- "Quirks Mode". Replacing this declaration     -->
<!-- with a "Standards Mode" doctype is supported, -->
<!-- but may lead to some differences in layout.   -->


<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Layout 1</title>
    
    <script>
    	function task1a() {
    		document.getElementById('task1a').style.display='none';
    		document.getElementById('task1b').style.display='block';
    		document.getElementById('click').value=new Date().getTime();	
    	}
    	
    	function passDuration() {
    		var click = document.getElementById('click').value;
    		document.getElementById("task-duration").value=(new Date().getTime()-click)/1000;	
    	}
    	
    </script>
    
    <style>
		body {
		 font-family:tahoma;
		}
		
		.task1b {
			display:none;
		}
		
		
	</style>
  </head>


<%
session.setAttribute("currentLayout","button");
ComparedProductList.deleteAll();
%>

<body>

<div align="left">
	<h1>Layout 1 - Button</h1>
	<iframe src="../welcome.jsp" height="569px" width="335 px" align="left">
	  <p>Your browser does not support iframes.</p>
	</iframe>
</div>

<div align="right">
	
	<div id="task1a">
		<table text-align="left" width="45%" style="font-size:14px;">
			<tr><td width="20%"><h2>Task 1a</h2></td><td width="80%"></td></tr>
			<tr><td>Description:&nbsp;&nbsp;</td><td>You would like to add these 2 specific tops into your comparison list.</td></tr>
			<tr width="80%"><td></td><td>
				<table width="70%" style="font-size:14px;">
				<tr><td>Top 1</td><td>Ralph Lauren Red</td></tr>
				<tr><td>Top 2</td><td>Ralph Lauren Blue</td></tr>
				</table>
			</td></tr>
			<tr><td></td><td><br><button id="click" onclick="return task1a()">Click here when you're done!</button></td></tr>
		</table>
	</div>
	
	<div class="task1b" id="task1b">
		<table text-align="left" width="45%" style="font-size:14px;">
			<tr><td width="20%"><h2>Task 1b</h2></td><td width="80%"></td></tr>
			<tr><td valign="top">Description:&nbsp;&nbsp;</td><td>Now that you're done, go to to the Compare page.
			<br>Choose the better product out of the 2 based on ONLY <b>price</b> and <b>likes</b> as the comparison criteria.</td></tr>
		</table>
		<br><br>
		<table text-align="left" width="45%" style="font-size:14px;">
			<tr><td width="100%"><h2>So what's your answer?</h2></td><td width="60%"></td></tr>
			<tr><td>
			<form action="processTask">
				<input type="hidden" id="task-duration" name="task-duration"/>
				<input type="hidden" name="type" value="button">
				<input type="hidden" name="task" value="task1">
				<input type="radio" name="answer" value="ralph_lauren_red" checked>Ralph Lauren Red
				<input type="radio" name="answer" value="ralph_lauren_blue">Ralph Lauren Blue
				<input type="radio" name="answer" value="same">Equally good
				<br><br>
				<input type="submit" value="Submit" onclick="passDuration()">
			</form>
			</td><td></td></tr>
		</table>
	</div>
	
</div>

 </body>
</html>
