<%@page import="app.*, entity.*, datamanager.*, java.util.*,javax.script.*;" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../jquery.mobile-1.4.1/jquery.mobile-1.4.1.min.css">
    <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.4.1/jquery.mobile-1.4.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/del.min.css">

	<script>
		function click() {
			alert("hi");
			alert(window.location.protocol + "//" + window.location.host + "/" + window.location.pathname);
		}
		
		function showTutorial() {
			
			alert("here");
			
			$("<div style='visibility:hidden;' data-role='popup' id='tutorial' data-overlay-theme='b' data-theme='b' data-corners='false'><a href='#' data-rel='back' class='ui-btn ui-corner-all ui-shadow ui-btn-a ui-icon-delete ui-btn-icon-notext ui-btn-right'>Close</a><img class='popphoto' src='../tutorial/WhatsNewHelpPage.PNG' style='max-height:512px;'></div>​")
		    //.css({ "backgroundColor":"white","display":"block","top": $(window).scrollTop() + 300 , "left": $(window).scrollTop() + 100})
		    .appendTo( $("body") )
		    .delay( 0 )
		    .fadeOut( 1000, function(){
		        $(this).remove();
		    });
		}
		$(document).ready(function() {
			
			/*alert("1st:" + location.href);
			if (GetUrlValue("dialog")=="true") {
				//alert("here");
				itemAdded();
			}*/
			
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
		
		var choice;
		
		
		function itemAdded() {
			$("<div class='ui-loader ui-overlay-shadow ui-body-e ui-corner-all'><h2>Item Added!</h2></div>")
		    .css({ "backgroundColor":"white","display":"block","top": $(window).scrollTop() + 300 , "left": $(window).scrollTop() + 100})
		    .appendTo( $("body") )
		    .delay( 0 )
		    .fadeOut( 1000, function(){
		        $(this).remove();
		    });
		}
		
		function showEmpty() {
			//alert("You have no items to compare in the list!");
			alert("here");
			$('#directTo').attr("href", "../whatsnew.jsp");
			
			
		}
		
		function GetUrlValue(VarSearch){
		    var SearchString = window.location.search.substring(1);
		    var VariableArray = SearchString.split('&');
		    for(var i = 0; i < VariableArray.length; i++){
		        var KeyValuePair = VariableArray[i].split('=');
		        if(KeyValuePair[0] == VarSearch){
		            return KeyValuePair[1];
		        }
		    }
		}
		
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
			left: 119px;
        }
        
       .ui-add-icon-right {
        	position: absolute;
			float: left;
			left: 277px;
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
		
		.imgClass { 
		    background-image: url(ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext);
		    background-position:  0px 0px;
		    background-repeat: no-repeat;
		    border: 0px;
		    background-color: none;
		    cursor: pointer;
		    outline: 0;
		}
		.imgClass:hover{ 
		      background-position:  0px -52px;
		}
		
		.imgClass:active{
		      background-position:  0px -104px;
		}

    </style>

</head>

<%
String check = (String) request.getParameter("check");
String pid = (String) request.getParameter("productID");
String dialog = (String) request.getParameter("dialog");

if (pid!=null || (check != null && check.equals("true"))) { 
	if (dialog != null && dialog.equals("true")) {
%>
	<meta http-equiv="refresh" content="0; url=../whatsnew.jsp?dialog=yes" />

<%} else { %>
	<meta http-equiv="refresh" content="0; url=../whatsnew.jsp" />
<% 	
}
}
boolean emptyList=true;
//check if db has products
if (!ComparedProductList.getAllProducts().isEmpty()) {
	emptyList=false;
} 
%>

<% 
if (dialog != null && dialog.equals("yes")) {
	System.out.println("Here!");
%>
<body onload="itemAdded()">
<% } else { %>
<body>
<% } %>


<%--header--%>

<div data-role="header" data-position="fixed">
	<a href="#tutorial" data-rel="popup" data-icon="info" data-iconpos="notext" data-transition="fade">Bars</a>
	<a href="../whatsnew_bars.jsp?check=true" data-icon="bars" data-iconpos="notext" data-transition="fade">Bars</a>
	<h1>What's New</h1>
</div>

<%--ForHimForHerTab--%>
<div data-role="tabs">
    <div data-role="navbar">
        <ul>
          <li><a href="#her" data-theme="a" data-ajax="false" class="ui-btn-active" width= "100%;">For Her</a></li>
          <li><a href="#him" data-theme="a" data-ajax="false"a  width= "100%;">For Him</a></li>
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
		<div class="ui-grid-a">
			<div class="ui-block-a">
				<h13>
					<div class="ui-add-icon-left" style="position:absolute; right:5px; ">
						<form action="addProduct" method="GET">
							<input id ="idToSend" type="hidden" name="productID" value="15"></input>					
							<input type="image" src="../images/plus.png" alt="Submit Form" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext" style="margin-bottom: 50px;"/>
							
						</form>
						
								
						
					</div>
					<a href="../item_details.jsp?check=true&productID=15"><img src="../products/female_top1.png" border="1"></a><p>Mango Cardigan<br>SGD25</p>
				</h13>
				
				<h14>
					<div class="ui-add-icon-left" style="position:absolute; right:5px;">
						<form action="addProduct" method="GET">
							<input id ="idToSend" type="hidden" name="productID" value="13"></input>					
							<input type="image" src="../images/plus.png" alt="Submit Form" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"/>

						</form>
						
									
					</div>
					<a href="../item_details.jsp?check=true&productID=13"><img src="../products/female_bottom1.png" border="1"></a><p>Levi's Jeans<br>SGD129</p>
				</h14>
				
				<h7>
					<div class="ui-add-icon-left" style="position:absolute; right:5px;">
						<form action="addProduct" method="GET">
							<input id ="idToSend" type="hidden" name="productID" value="13"></input>					
							<input type="image" src="../images/plus.png" alt="Submit Form" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"/>

						</form>
						
										
					</div>
					<a href="../item_details.jsp?check=true&productID=13"><img src="../products/female_bag2.png" border="1"></a><p>Anchor Duffle Bag<br>SGD79</p>
				</h7>
				
				<h8>
					<div class="ui-add-icon-left" style="position:absolute; right:5px;">
						<form action="addProduct" method="GET">
							<input id ="idToSend" type="hidden" name="productID" value="17"></input>					
							<input type="image" src="../images/plus.png" alt="Submit Form" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"/>

						</form>
						
										
					</div>
					<a href="../item_details.jsp?check=true&productID=17"><img src="../products/female_watch1.png" border="1"></a><p>Marc Jacobs Watch<br>SGD155</p>
				</h8>
			</div>
			<div class="ui-block-b">
				<h13>
					<div class="ui-add-icon-right" style="position:absolute;">
						
						<form action="addProduct" method="GET">
							<input id ="idToSend" type="hidden" name="productID" value="16"></input>					
							<input type="image" src="../images/plus.png" alt="Submit Form" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"/>

						</form>
						
										
					</div>
					<a href="../item_details.jsp?check=true&productID=16"><img src="../products/female_top2.png" border="1"></a><p>ASOS Tshirt<br>SGD30</p>
				</h13>
				
				<h14>
					<div class="ui-add-icon-right" style="position:absolute;" >
						<form action="addProduct" method="GET">
							<input id ="idToSend" type="hidden" name="productID" value="14"></input>					
							<input type="image" src="../images/plus.png" alt="Submit Form" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"/>

						</form>
						
										
					</div>
					<a href="../item_details.jsp?check=true&productID=14"><img src="../products/female_bottom2.png" border="1"></a><p>Topshop Shorts<br>SGD49</p>
				</h14>
				
				<h7>
					<div class="ui-add-icon-right" style="position:absolute;" >
						<form action="addProduct" method="GET">
							<input id ="idToSend" type="hidden" name="productID" value="11"></input>					
							<input type="image" src="../images/plus.png" alt="Submit Form" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"/>

						</form>
						
										
					</div>
					<a href="../item_details.jsp?check=true&productID=11"><img src="../products/female_bag1.png" border="1"></a><p>River Island Bag<br>SGD259</p>
				</h7>
				
				<h8>
					<div class="ui-add-icon-right" style="position:absolute;" >
						<form action="addProduct" method="GET">
							<input id ="idToSend" type="hidden" name="productID" value="18"></input>					
							<input type="image" src="../images/plus.png" alt="Submit Form" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"/>

						</form>
						
										
					</div>
					<a href="../item_details.jsp?check=true&productID=18"><img src="../products/female_watch2.png" border="1"></a><p>ASOS Watch<br>SGD230</p>
				</h8>
				
			</div>
		
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
		<div class="ui-grid-a">
			<div class="ui-block-a">
				<h9>
					<div class="ui-add-icon-left" style="position:absolute; right:5px;">
						<form action="addProduct" method="GET">
							<input id ="idToSend" type="hidden" name="productID" value="1"></input>					
							<input type="image" src="../images/plus.png" alt="Submit Form" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"/>

						</form>
						
										
					</div>
					<a href="../item_details.jsp?check=true&productID=1"><img src="../products/ralph_lauren1.png" border="1"></a><p>Ralph Lauren White<br>SGD199</p>
				</h9>
				
				<h12>
					<div class="ui-add-icon-left" style="position:absolute; right:5px;">
						<form action="addProduct" method="GET">
							<input id ="idToSend" type="hidden" name="productID" value="9"></input>					
							<input type="image" src="../images/plus.png" alt="Submit Form" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"/>

						</form>
						
									
					</div>
					<a href="../item_details.jsp?check=true&productID=9"><img src="../products/male_watch1.png" border="1"></a><p>Fossil Watch<br>SGD278</p>
				</h12>
				
				<h11>
					<div class="ui-add-icon-left" style="position:absolute; right:5px;">
						<form action="addProduct" method="GET">
							<input id ="idToSend" type="hidden" name="productID" value="5"></input>					
							<input type="image" src="../images/plus.png" alt="Submit Form" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"/>

						</form>
						
										
					</div>
					<a href="../item_details.jsp?check=true&productID=5"><img src="../products/male_bag1.png" border="1"></a><p>Herschel Black Bag<br>SGD189</p>
				</h11>
				
				<h10>
					<div class="ui-add-icon-left" style="position:absolute; right:5px;">
						<form action="addProduct" method="GET">
							<input id ="idToSend" type="hidden" name="productID" value="7"></input>					
							<input type="image" src="../images/plus.png" alt="Submit Form" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"/>

						</form>
						
										
					</div>	
					<a href="../item_details.jsp?check=true&productID=7"><img src="../products/male_bottoms1.png" border="1"></a><p>G Star Denim Shorts<br>SGD229</p>
				</h10>
			</div>
			<div class="ui-block-b">
				<h9>
					<div class="ui-add-icon-right" style="position:absolute;">
						<form action="addProduct" method="GET">
							<input id ="idToSend" type="hidden" name="productID" value="3"></input>					
							<input type="image" src="../images/plus.png" alt="Submit Form" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"/>

						</form>
						
										
					</div>
					<a href="../item_details.jsp?check=true&productID=3"><img src="../products/ralph_lauren3.png" border="1"></a><p>Ralph Lauren Blue<br>SGD169</p>
				</h9>
				
				<h12>
					<div class="ui-add-icon-right" style="position:absolute;" >
						
						<form action="addProduct" method="GET">
							<input id ="idToSend" type="hidden" name="productID" value="10"></input>					
							<input type="image" src="../images/plus.png" alt="Submit Form" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"/>

						</form>
									
					</div>
					<a href="../item_details.jsp?check=true&productID=10"><img src="../products/male_watch2.png" border="1"></a><p>Hugo Boss Watch<br>SGD329</p>
				</h12>
				
				<h11>
					<div class="ui-add-icon-right" style="position:absolute;">
						<form action="addProduct" method="GET">
							<input id ="idToSend" type="hidden" name="productID" value="6"></input>					
							<input type="image" src="../images/plus.png" alt="Submit Form" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"/>

						</form>
						
									
					</div>
					<a href="../item_details.jsp?check=true&productID=6"><img src="../products/male_bag2.png" border="1"></a><p>Herschel Coloured Bag<br>SGD189</p>
				</h11>
				
				<h10>
					<div class="ui-add-icon-right" style="position:absolute;">
						<form action="addProduct" method="GET">
							<input id ="idToSend" type="hidden" name="productID" value="8"></input>					
							<input type="image" src="../images/plus.png" alt="Submit Form" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext"/>

						</form>
						
										
					</div>	
					<a href="../item_details.jsp?check=true&productID=8"><img src="../products/male_bottoms2.png" border="1"></a><p>Lee 5 Red Berms<br>SGD157</p>
				</h10>

			</div>
			
		</div>
	</div>

</div>

	<%--pop up message for item added--%>
	<div data-role="popup" id="successAdd" class="ui-content">
		<a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn ui-icon-delete ui-btn-icon-notext ui-btn-right" >Close</a>
		<h3>Item added!</h3>
	</div>

<%-- Tutorial Div --%>     

<div data-role="popup" id="tutorial" data-overlay-theme="b" data-theme="b" data-corners="false">
    <a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn-a ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a><img class="popphoto" src="../tutorial/whatsnewhelp.PNG" style="max-height:512px;">
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
            <li><a href="../compareflip.jsp" rel="external" data-icon="check">Compare</a></li>
            
        </ul>
    </div>
</div>
</body>

</html>