<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../jquery.mobile-1.4.1/jquery.mobile-1.4.1.min.css">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.1/jquery.mobile-1.4.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/del.min.css">

<style>
.ui-grid-a img {
    width  : 50%;
    height : auto;
    display: block;
    margin-left: auto;
    margin-right: auto;
}

.ui-grid-a p {
	text-align: center
}

p {
	text-align:center;
	font-weight:bold;
	font-size: 12px;
}

h3 {
	text-align:center;
	font-weight:bold;
}

</style>

</head>
<body>

<div data-role="page">

<%--header--%>

<div data-role="header" data-position="inline">
	<a href="#tutorial"  data-rel="popup" data-icon="info" data-iconpos="notext">Logo</a>
    <h1>Snap It!</h1>
</div>

  <div data-role="main" class="ui-content">
    <h3>Upload an existing photo</h3>
	    <p>or</p>
	<h3>Use your camera to snap a photo!</h3>
	<br>
	<center><img src="../images/camera.png" height="70" width="70"></center>
	<br>
	<form action="../searchresults.jsp?check=true&num=1">
		<input type="file" accept="image/*;capture=camera">
		<br>
		<button type="submit" class="ui-btn ui-corner-all ui-shadow ui-btn-b ui-btn-icon-left ui-icon-check">Search</button>
	</form>
  </div>
  
<%-- Tutorial Div --%>     

<div data-role="popup" id="tutorial" data-overlay-theme="b" data-theme="b" data-corners="false">
    <a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn-a ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a><img class="popphoto" src="../tutorial/snaphelppage.PNG" style="max-height:512px;">
</div>​
	  

<%--footer--%>
<div data-role="footer" data-position="fixed">
    <div data-role="navbar">
        <ul>
            <li><a href="../whatsnew.jsp?check=true" rel="external" data-icon="star">What's New</a>
            </li>
            <li><a href="../search.jsp" rel="external" data-icon="search">Search</a>
            </li>
            <li><a href="../snap.jsp" rel="external" data-icon="camera" class="ui-btn-active">Snap</a>
            </li>
            <li><a href="../compareflip.jsp" rel="external" data-icon="check">Compare</a></li>
            
        </ul>
    </div>
</div>

</body>
</html>