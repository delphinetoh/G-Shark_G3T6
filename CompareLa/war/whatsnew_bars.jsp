<%@ page import="datamanager.*,entity.*,java.util.*" %>

<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../jquery.mobile-1.4.1/jquery.mobile-1.4.1.min.css">
    <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.4.1/jquery.mobile-1.4.1.min.js"></script>

	<script>
		$(document).ready(function() {
		    $('input:radio[name=her-pref]').change(function() {
		        if (this.value == 'tops') {
		            $("h13").show();
		            $("h14").hide();
		            $("h7").hide();
		            $("h8").hide();
		        } 
		        else if (this.value == 'bottoms') {
		            $("h13").hide();
		            $("h14").show();
		            $("h7").hide();
		            $("h8").hide();
		        }
		        else if (this.value == 'bags') {
		            $("h13").hide();
		            $("h14").hide();
		            $("h7").show();
		            $("h8").hide();
		        }
		        else if (this.value == 'watch') {
		            $("h13").hide();
		            $("h14").hide();
		            $("h7").hide();
		            $("h8").show();
		        }
		        else if (this.value == 'all') {
		            $("h13").show();
		            $("h14").show();
		            $("h7").show();
		            $("h8").show();
		        }
		    });
		});
		
		$(document).ready(function() {
		    $('input:radio[name=him-pref]').change(function() {
		        if (this.value == 'tops') {
		            $("h9").show();
		            $("h10").hide();
		            $("h11").hide();
		            $("h12").hide();
		        } 
		        else if (this.value == 'bottoms') {
		            $("h9").hide();
		            $("h10").show();
		            $("h11").hide();
		            $("h12").hide();
		        }
		        else if (this.value == 'bags') {
		            $("h9").hide();
		            $("h10").hide();
		            $("h11").show();
		            $("h12").hide();
		        }
		        else if (this.value == 'watch') {
		            $("h9").hide();
		            $("h10").hide();
		            $("h11").hide();
		            $("h12").show();
		        }
		        else if (this.value == 'all') {
		            $("h9").show();
		            $("h10").show();
		            $("h11").show();
		            $("h12").show();
		        }
		    });
		});
	</script>

    <style>
    	.ui-content {
    		padding:0;
    	}
        .ui-grid-a img {
            width: 90%;
            height: auto;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
        .ui-grid-a div {
            width: 75%;
            height: auto;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
        .ui-grid-a p {
            text-align: center
        }
        
        .ui-add-icon-left {
        	position: absolute;
			float: left;
			left: 117px;
        }
        
       .ui-add-icon-right {
        	position: absolute;
			float: left;
			left: 275px;
        }
        
        #popupForm-popup {
            right: 5 !important;
            left: 5 !important;
            width: 90%;
        }
        p {
            text-align: center;
            font-size: 12px;
            font-family: Century Gothic;
        }
        h3 {
            text-align: center;
            font-weight: bold;
        }
        <%--Himmy --%>
        
        .ui-li-static.ui-collapsible > .ui-collapsible-heading {
            margin: 0;
        }
        .ui-li-static.ui-collapsible {
            padding: 0;
        }
        .ui-li-static.ui-collapsible > .ui-collapsible-heading > .ui-btn {
            border-top-width: 0;
        }
        
        .ui-add-icon {
        	position: absolute;
			float: left;
			left: 265px;
        }

        a:link img{
        text-decoration: none;
		border-color: black;
		border-width: 1px;
		}

		a:visited img{
		text-decoration: none;
		border-color: black;
		border-width: 1px;
		}
    </style>

</head>

<body>

<%
String check = (String) request.getParameter("check");
if (check != null && check.equals("true")) { 
%>
	<meta http-equiv="refresh" content="0; url=../whatsnew_bars.jsp" />

<%}
%>

<%--header--%>

<div data-role="header" data-position="fixed">
	<a href="#" data-icon="star" data-iconpos="notext" data-transition="fade">Bars</a>
	<a href="../whatsnew.jsp?check=true" data-icon="grid" data-iconpos="notext" data-transition="fade">Bars</a>
	<h1>What's New</h1>
</div>

<%--ForHimForHerTab--%>
<div data-role="tabs">
    <div data-role="navbar">
        <ul>
          <li><a href="#her" data-theme="a" data-ajax="false" class="ui-btn-active">For Her</a></li>
          <li><a href="#him" data-theme="a" data-ajax="false">For Him</a></li>
        </ul>
    </div>
    
    <%--For Her tab--%>
    <div id="her" class="ui-content">
	
	<%--For Her PreferenceBar--%>
		<form name="her-pref-form" data-role="controlgroup" data-type="horizontal" data-mini="true" align="center">
		 	<input type="radio" name="her-pref" id="all" value="all" checked="checked" />
		 	<label for="all">All</label>
		
		 	<input type="radio" name="her-pref" id="tops" value="tops"  />
		 	<label for="tops">Tops</label>
		 	
		 	<input type="radio" name="her-pref" id="bottoms" value="bottoms"  />
		 	<label for="bottoms">Bottoms</label>
		 	
		 	<input type="radio" name="her-pref" id="bags" value="bags"  />
		 	<label for="bags">Bags</label>
		 	
		 	<input type="radio" name="her-pref" id="watch" value="watch"  />
		 	<label for="watch">Watch</label>
		</form>

	<%--For Her Products--%>

		

		<br>
		<div class="ui-grid-solo" align="center">
			<h13>
				<div class="ui-add-icon" style="position:absolute;">
					<a href="#successAdd" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"></a>			
				</div>
				<a href="../item_details.jsp?check=true&productID=15"><img src="../products/female_top1.png" border="1"></a><font face="century gothic">Mango Cardigan<br>SGD25</font>
				<table align="center" width="80%">
					<tr>
					<td width="20%" align="right"><a href="#successLike" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-heart ui-btn-icon-notext"></a><td width="20%"><%=ProductDM.getProductBasedOnID("15").getLikes()%></td>
		
					<td width="4%"><a href="#" class="ui-btn ui-shadow ui-corner-all ui-icon-comment ui-btn-icon-notext"></a><td width="20%">See reviews</td>
					</tr>			
				</table>
				<br>
				
				<div class="ui-add-icon" style="position:absolute;">
					<a href="#successAdd" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"></a>			
				</div>
				<a href="../item_details.jsp?check=true&productID=16"><img src="../products/female_top2.png" border="1"></a><font face="century gothic">ASOS Tshirt in Stripes<br>SGD30</font>		
				<table align="center" width="80%">
					<tr>
					<td width="20%" align="right"><a href="#successLike" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-heart ui-btn-icon-notext"></a><td width="20%"><%=ProductDM.getProductBasedOnID("16").getLikes()%></td>
		
					<td width="4%"><a href="#" class="ui-btn ui-shadow ui-corner-all ui-icon-comment ui-btn-icon-notext"></a><td width="20%">See reviews</td>
					</tr>			
				</table>
				<br>
			</h13>
					
			<h14>
				<div class="ui-add-icon" style="position:absolute;">
					<a href="#successAdd" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"></a>			
				</div>
				<a href="../item_details.jsp?check=true&productID=13"><img src="../products/female_bottom1.png" border="1"></a><font face="century gothic">Levi's Jeans<br>SGD129</font>
				<table align="center" width="80%">
					<tr>
					<td width="20%" align="right"><a href="#successLike" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-heart ui-btn-icon-notext"></a><td width="20%"><%=ProductDM.getProductBasedOnID("13").getLikes()%></td>
		
					<td width="4%"><a href="#" class="ui-btn ui-shadow ui-corner-all ui-icon-comment ui-btn-icon-notext"></a><td width="20%">See reviews</td>
					</tr>			
				</table>
				<br>
				
				<div class="ui-add-icon" style="position:absolute;">
					<a href="#successAdd" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"></a>			
				</div>
				<a href="../item_details.jsp?check=true&productID=14"><img src="../products/female_bottom2.png" border="1"></a><font face="century gothic">Topshop Denim Shorts<br>SGD49</font>
				<table align="center" width="80%">
					<tr>
					<td width="20%" align="right"><a href="#successLike" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-heart ui-btn-icon-notext"></a><td width="20%"><%=ProductDM.getProductBasedOnID("14").getLikes()%></td>
		
					<td width="4%"><a href="#" class="ui-btn ui-shadow ui-corner-all ui-icon-comment ui-btn-icon-notext"></a><td width="20%">See reviews</td>
					</tr>			
				</table>
			</h14>
			
			<h7>
				<div class="ui-add-icon" style="position:absolute;">
					<a href="#successAdd" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"></a>			
				</div>
				<a href="../item_details.jsp?check=true&productID=12"><img src="../products/female_bag2.png" border="1"></a><font face="century gothic">Anchor Duffle Bag<br>SGD79</font>
				<table align="center" width="80%">
					<tr>
					<td width="20%" align="right"><a href="#successLike" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-heart ui-btn-icon-notext"></a><td width="20%"><%=ProductDM.getProductBasedOnID("12").getLikes()%></td>
		
					<td width="4%"><a href="#" class="ui-btn ui-shadow ui-corner-all ui-icon-comment ui-btn-icon-notext"></a><td width="20%">See reviews</td>
					</tr>			
				</table>
				
				<div class="ui-add-icon" style="position:absolute;">
					<a href="#successAdd" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"></a>			
				</div>
				<a href="../item_details.jsp?check=true&productID=11"><img src="../products/female_bag1.png" border="1"></a><font face="century gothic">River Island Quilted Bag<br>SGD259</font>
				<table align="center" width="80%">
					<tr>
					<td width="20%" align="right"><a href="#successLike" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-heart ui-btn-icon-notext"></a><td width="20%"><%=ProductDM.getProductBasedOnID("11").getLikes()%></td>
		
					<td width="4%"><a href="#" class="ui-btn ui-shadow ui-corner-all ui-icon-comment ui-btn-icon-notext"></a><td width="20%">See reviews</td>
					</tr>			
				</table>
			</h7>
			
			<h8>
				<div class="ui-add-icon" style="position:absolute;">
					<a href="#successAdd" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"></a>			
				</div>
				<a href="../item_details.jsp?check=true&productID=17"><img src="../products/female_watch1.png" border="1"></a><font face="century gothic">Marc Jacobs Watch<br>SGD155</font>
				<table align="center" width="80%">
					<tr>
					<td width="20%" align="right"><a href="#successLike" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-heart ui-btn-icon-notext"></a><td width="20%"><%=ProductDM.getProductBasedOnID("17").getLikes()%></td>
		
					<td width="4%"><a href="#" class="ui-btn ui-shadow ui-corner-all ui-icon-comment ui-btn-icon-notext"></a><td width="20%">See reviews</td>
					</tr>			
				</table>
				
				<div class="ui-add-icon" style="position:absolute;">
					<a href="#successAdd" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"></a>			
				</div>
				<a href="../item_details.jsp?check=true&productID=18"><img src="../products/female_watch2.png" border="1"></a><font face="century gothic">Tommy Hilfiger Watch<br>SGD230</font>
				<table align="center" width="80%">
					<tr>
					<td width="20%" align="right"><a href="#successLike" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-heart ui-btn-icon-notext"></a><td width="20%"><%=ProductDM.getProductBasedOnID("18").getLikes()%></td>
		
					<td width="4%"><a href="#" class="ui-btn ui-shadow ui-corner-all ui-icon-comment ui-btn-icon-notext"></a><td width="20%">See reviews</td>
					</tr>			
				</table>
			</h8>
			
			
		</div>	

	</div>
	<%--For Him tab--%>
    <div id="him" class="ui-content">
    
	<%--For Him PreferenceBar--%>
		<form name="him-pref-form" data-role="controlgroup" data-type="horizontal" data-mini="true" align="center">
	     	<input type="radio" name="him-pref" id="all" value="all" checked="checked" />
	     	<label for="all">All</label>
	
	     	<input type="radio" name="him-pref" id="tops" value="tops"  />
	     	<label for="tops">Tops</label>
	     	
	     	<input type="radio" name="him-pref" id="bottoms" value="bottoms"  />
	     	<label for="bottoms">Bottoms</label>
	     	
	     	<input type="radio" name="him-pref" id="bags" value="bags"  />
	     	<label for="bags">Bags</label>
	     	
	     	<input type="radio" name="him-pref" id="watch" value="watch"  />
	     	<label for="watch">Watch</label>
    	</form>
		
	<%--For Him Products--%>
		<br>
		<div class="ui-grid-solo" align="center">
			<h9>
				<div class="ui-add-icon" style="position:absolute;">
					<a href="#successAdd" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"></a>			
				</div>
				<a href="../item_details.jsp?check=true&productID=1"><img src="../products/ralph_lauren1.png" border="1"></a><font face="century gothic">Ralph Lauren White<br>SGD199</font>
				<table align="center" width="80%">
					<tr>
					<td width="20%" align="right"><a href="#successLike" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-heart ui-btn-icon-notext"></a><td width="20%"><%=ProductDM.getProductBasedOnID("1").getLikes()%></td></td>
		
					<td width="4%"><a href="#" class="ui-btn ui-shadow ui-corner-all ui-icon-comment ui-btn-icon-notext"></a><td width="20%">See reviews</td></td>
					</tr>			
				</table>
				<br>

				<div class="ui-add-icon" style="position:absolute;">
					<a href="#successAdd" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"></a>			
				</div>				
				<a href="../item_details.jsp?check=true&productID=3"><img src="../products/ralph_lauren3.png" border="1"></a><font face="century gothic">Ralph Lauren Blue<br>SGD169</font>	
				<table align="center" width="80%">
					<tr>
					<td width="20%" align="right"><a href="#successLike" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-heart ui-btn-icon-notext"></a><td width="20%"><%=ProductDM.getProductBasedOnID("3").getLikes()%></td></td>
		
					<td width="4%"><a href="#" class="ui-btn ui-shadow ui-corner-all ui-icon-comment ui-btn-icon-notext"></a><td width="20%">See reviews</td></td>
					</tr>			
				</table>
				<br>
			</h9>
					
			<h12>
				<div class="ui-add-icon" style="position:absolute;">
					<a href="#successAdd" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"></a>			
				</div>
				<a href="../item_details.jsp?check=true&productID=9"><img src="../products/male_watch1.png" border="1"></a><font face="century gothic">Fossil Watch<br>SGD278</font>
				<table align="center" width="80%">
					<tr>
					<td width="20%" align="right"><a href="#successLike" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-heart ui-btn-icon-notext"></a><td width="20%"><%=ProductDM.getProductBasedOnID("9").getLikes()%></td></td>
		
					<td width="4%"><a href="#" class="ui-btn ui-shadow ui-corner-all ui-icon-comment ui-btn-icon-notext"></a><td width="20%">See reviews</td></td>
					</tr>			
				</table>
				<br>
				
				<div class="ui-add-icon" style="position:absolute;">
					<a href="#successAdd" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"></a>			
				</div>
				<a href="../item_details.jsp?check=true&productID=10"><img src="../products/male_watch2.png" border="1"></a><font face="century gothic">Hugo Boss Watch<br>SGD329</font>
				<table align="center" width="80%">
					<tr>
					<td width="20%" align="right"><a href="#successLike" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-heart ui-btn-icon-notext"></a><td width="20%"><%=ProductDM.getProductBasedOnID("10").getLikes()%></td></td>
		
					<td width="4%"><a href="#" class="ui-btn ui-shadow ui-corner-all ui-icon-comment ui-btn-icon-notext"></a><td width="20%">See reviews</td></td>
					</tr>			
				</table>
			</h12>
			
			<h11>
				<div class="ui-add-icon" style="position:absolute;">
					<a href="#successAdd" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"></a>			
				</div>
				<a href="../item_details.jsp?check=true&productID=5"><img src="../products/male_bag1.png" border="1"></a><font face="century gothic">Herschel Black Bag<br>SGD189</font>
				<table align="center" width="80%">
					<tr>
					<td width="20%" align="right"><a href="#successLike" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-heart ui-btn-icon-notext"></a><td width="20%"><%=ProductDM.getProductBasedOnID("5").getLikes()%></td></td>
		
					<td width="4%"><a href="#" class="ui-btn ui-shadow ui-corner-all ui-icon-comment ui-btn-icon-notext"></a><td width="20%">See reviews</td></td>
					</tr>			
				</table>
				
				<div class="ui-add-icon" style="position:absolute;">
					<a href="#successAdd" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"></a>			
				</div>
				<a href="../item_details.jsp?check=true&productID=6"><img src="../products/male_bag2.png" border="1"></a><font face="century gothic">Herschel Coloured Bag<br>SGD189</font>
				<table align="center" width="80%">
					<tr>
					<td width="20%" align="right"><a href="#successLike" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-heart ui-btn-icon-notext"></a><td width="20%"><%=ProductDM.getProductBasedOnID("6").getLikes()%></td></td>
		
					<td width="4%"><a href="#" class="ui-btn ui-shadow ui-corner-all ui-icon-comment ui-btn-icon-notext"></a><td width="20%">See reviews</td></td>
					</tr>			
				</table>
			</h11>
			
			<h10>
				<div class="ui-add-icon" style="position:absolute;">
					<a href="#successAdd" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"></a>			
				</div>
				<a href="../item_details.jsp?check=true&productID=7"><img src="../products/male_bottoms1.png" border="1"></a><font face="century gothic">G Star Denim Shorts<br>SGD229</font>
				<table align="center" width="80%">
					<tr>
					<td width="20%" align="right"><a href="#successLike" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-heart ui-btn-icon-notext"></a><td width="20%"><%=ProductDM.getProductBasedOnID("7").getLikes()%></td></td>
		
					<td width="4%"><a href="#" class="ui-btn ui-shadow ui-corner-all ui-icon-comment ui-btn-icon-notext"></a><td width="20%">See reviews</td></td>
					</tr>			
				</table>
				
				<div class="ui-add-icon" style="position:absolute;">
					<a href="#successAdd" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"></a>			
				</div>
				<a href="../item_details.jsp?check=true&productID=8"><img src="../products/male_bottoms2.png" border="1"></a><font face="century gothic">Lee 5 Red Berms<br>SGD157</font>
				<table align="center" width="80%">
					<tr>
					<td width="20%" align="right"><a href="#successLike" data-rel="popup" data-transition="pop" class="ui-btn ui-shadow ui-corner-all ui-icon-heart ui-btn-icon-notext"></a><td width="20%"><%=ProductDM.getProductBasedOnID("8").getLikes()%></td></td>
		
					<td width="4%"><a href="#" class="ui-btn ui-shadow ui-corner-all ui-icon-comment ui-btn-icon-notext"></a><td width="20%">See reviews</td></td>
					</tr>			
				</table>
			</h10>
		</div>	

	</div>
	<%--pop up message for item added--%>
	<div data-role="popup" id="successAdd" style="width:100px">
		<a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn ui-icon-delete ui-btn-icon-notext ui-btn-right" >Close</a>
		<h3>Item Added!</h3>
	</div> 

	<%--pop up message for like added--%>
	<div data-role="popup" id="successLike" style="width:100px">
		<a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn ui-icon-delete ui-btn-icon-notext ui-btn-right" >Close</a>
		<h3>Liked it!</h3>
	</div> 

</div>

                

<%--footer--%>

<div data-role="footer" data-position="fixed">
    <div data-role="navbar">
        <ul>
            <li><a href="../whatsnew.jsp" rel="external" data-icon="star" class="ui-btn-active">What's New</a>
            </li>
            <li><a href="../search.jsp" rel="external" data-icon="search">Search</a>
            </li>
            <li><a href="../snap.jsp" rel="external" data-icon="camera">Snap</a>
            </li>
            <li><a href="../compare.html" rel="external" data-icon="check">Compare</a>
            </li>
        </ul>
    </div>
</div>
</body>

</html>