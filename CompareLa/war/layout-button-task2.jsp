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
    	function task2a() {
    		document.getElementById('task2a').style.display='none';
    		document.getElementById('task2b').style.display='block';
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
		
		.task2b {
			display:none;
		}
		
		
	</style>
  </head>

<%
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
	
	<div id="task2a">
		<table text-align="left" width="45%" style="font-size:14px;">
			<tr><td width="20%"><h2>Task 2a</h2></td><td width="80%"></td></tr>
			<tr><td>Description:&nbsp;&nbsp;</td><td>You would like to add these 2 specific bags into your comparison list.</td></tr>
			<tr width="80%"><td></td><td>
				<table width="70%" style="font-size:14px;">
				<tr><td>Bag 1</td><td>Herschel Black Bag</td></tr>
				<tr><td>Bag 2</td><td>Herschel Coloured Bag</td></tr>
				</table>
			</td></tr>
			<tr><td></td><td><br><button id="click" onclick="return task2a()">Click here when you're done!</button></td></tr>
		</table>
	</div>
	
	<div class="task2b" id="task2b">
		<table text-align="left" width="45%" style="font-size:14px;">
			<tr><td width="20%"><h2>Task 2b</h2></td><td width="80%"></td></tr>
			<tr><td valign="top">Description:&nbsp;&nbsp;</td><td>Now that you're done, go to to the Compare page.
			<br>Choose the better product out of the 2 based on ONLY <b>price</b> and <b>likes</b> as the comparison criteria.</td></tr>
		</table>
		<br><br>
		<table text-align="left" width="45%" style="font-size:14px;">
			<tr><td width="100%"><h2>So what's your answer?</h2></td><td width="30%"></td></tr>
			<tr><td>
			<form action="processTask">
				<input type="hidden" id="task-duration" name="task-duration"/>
				<input type="hidden" name="type" value="button">
				<input type="hidden" name="task" value="task2">
				<input type="radio" name="answer" value="herschel_black" checked>Herschel Black Bag
				<input type="radio" name="answer" value="herschel_coloured">Herschel Coloured Bag
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
