<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../jquery.mobile-1.4.1/jquery.mobile-1.4.1.min.css">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.1/jquery.mobile-1.4.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/del.min.css">


<style type="text/css">
.ui-content {
	padding:0;
}

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

<%
String fromSearch = (String) session.getAttribute("fromSearch");
session.removeAttribute("fromSearch");
if (fromSearch != null && fromSearch.equals("true")) { %>
	<meta http-equiv="refresh" content="0; url=../search_tops.jsp" />
<% }
%>

 <%
session.setAttribute("check","true");
%>

<%--header--%>

<div data-role="header" data-position="inline" data-position="fixed">
	<a href="../../" data-icon="info" data-iconpos="notext">Logo</a>
    <h1>Search Item</h1>
</div>


<%--search--%>

  <div data-role="main" class="ui-content">
  
  	  	<h3>Tops</h3>
	  	<div data-role="tabs">
		    <div data-role="navbar">
		        <ul>
		          <li><a href="#her" data-theme="a" data-ajax="false" class="ui-btn-active">For Her</a></li>
		          <li><a href="#him" data-theme="a" data-ajax="false">For Him</a></li>
		        </ul>
		    </div>
		    <div id="her" class="ui-content">
				<form action="../searchresults.jsp?check=true&num=29">
					<div style="padding:10px 20px;">
	                    <div data-role="rangeslider" data-mini="true">
	                        <label for="range-1a">Price:</label>
	                        <input type="range" name="range-1a-her" id="range-1a-her" min="20" max="70" value="20">
	                        <label for="range-1b">Rangeslider:</label>
	                        <input type="range" name="range-1b-her" id="range-1b-her" min="20" max="70" value="70">
	                    </div>
	
	                    <label for="select-brand-her" class="select">Brands:</label>
	                    <select name="select-brand-her" id="select-brand-her" multiple="multiple" data-native-menu="false" data-icon="grid" data-iconpos="left">
	                        <option value="asos" selected="">ASOS</option>
	                        <option value="cheapmonday" selected="">Cheap Monday</option>
	                        <option value="mango" selected="">Mango</option>
	                        <option value="topshop" selected="">Topshop</option>
	                    </select>
	                    
	                    <label for="select-size-her" class="select">Sizes:</label>
	                    <select name="select-size-her" id="select-size-her" multiple="multiple" data-native-menu="false" data-icon="grid" data-iconpos="left">
	                        <option value="uk2" selected="">UK2</option>
	                        <option value="uk4" selected="">UK4</option>
	                        <option value="uk6" selected="">UK6</option>
	                    </select>
	                    
	                    <br>
	                    <button type="submit" class="ui-btn ui-corner-all ui-shadow ui-btn-b ui-btn-icon-left ui-icon-check">Search</button>
                	</div>
			    </form>
		    </div>
		    <div id="him" class="ui-content">
		        <form action="../searchresults.jsp?check=true&num=22">
					<div style="padding:10px 20px;">
	                    <div data-role="rangeslider" data-mini="true">
	                        <label for="range-1a-him">Price:</label>
	                        <input type="range" name="range-1a-him" id="range-1a-him" min="30" max="199" value="30">
	                        <label for="range-1b-him">Rangeslider:</label>
	                        <input type="range" name="range-1b-him" id="range-1b-him" min="30" max="199" value="199">
	                    </div>
	
	                    <label for="select-brand-him" class="select">Brands:</label>
	                    <select name="select-brand-him" id="select-brand-him" multiple="multiple" data-native-menu="false" data-icon="grid" data-iconpos="left">
	                        <option value="asos" selected="">ASOS</option>
	                        <option value="fredperry" selected="">Fred Perry</option>
	                        <option value="ralphlauren" selected="">Ralph Lauren</option>
	                        <option value="topman" selected="">Topman</option>
	                    </select>
	                    
	                    <label for="select-size-him" class="select">Sizes:</label>
	                    <select name="select-size-him" id="select-size-him" multiple="multiple" data-native-menu="false" data-icon="grid" data-iconpos="left">
	                        <option value="s" selected="">S</option>
	                        <option value="m" selected="">M</option>
	                        <option value="l" selected="">L</option>
	                    </select>
	                    
	                    <br>
	                    <button type="submit" class="ui-btn ui-corner-all ui-shadow ui-btn-b ui-btn-icon-left ui-icon-check">Search</button>
                	</div>
			    </form>
		    </div>
    	</div>
  
  </div>
	  	

<%--footer--%>
  <div data-role="footer" data-position="fixed">
    <div data-role="navbar">
      <ul>
        <li><a href="../whatsnew.jsp?check=true" rel="external" data-icon="star">What's New</a></li>
        <li><a href="../search.jsp" rel="external" class="ui-btn-active" data-icon="search">Search</a></li>
        <li><a href="../snap.jsp" rel="external" data-icon="camera">Snap</a></li>
        <li><a href="../compareflip.jsp" rel="external" data-icon="check">Compare</a></li>
        
      </ul>
    </div>
  </div>
</div> 

</body>
</html>