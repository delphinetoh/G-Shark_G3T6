<%@ page import="datamanager.*,entity.*,java.util.*" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="jquery.mobile-1.4.1/jquery.mobile-1.4.1.min.css">
		<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
		<script src="http://code.jquery.com/mobile/1.4.1/jquery.mobile-1.4.1.min.js"></script>
		<link rel="stylesheet" type="text/css" href="css/del.min.css">
		
		<script>
		
		function locChange() {
		    if (document.getElementById("loc").value == '1'){
		    	$("h10").show();
	            $("h11").hide();
	            $("h12").hide();
		    }     
		    else if (document.getElementById("loc").value == '2'){
		        $("h10").hide();
	            $("h11").show();
	            $("h12").hide();
		    }        
		    else if (document.getElementById("loc").value == '3'){
		    	$("h10").hide();
	            $("h11").hide();
	            $("h12").show();
		    }
		}
		
		</script>
		
		<style>
		h1
		{
		text-align:left;
		}

		img
		{
		max-width: 100%;
		height: auto;
		width: auto; 
		}
		
		#addToCompareBtn
		{
		width: auto;
		display:block;
		background: green; 
		color: white;
		}
		
		#comparePopup
		{
		width: auto;
		display:block;
		background: green; 
		color: white;
		}
		
		
		h11
		{
		  display:none;
		}
		
		h12
		{
			display:none;
		} 
		</style>
	</head>
	

			
	<body>
	
			<%
			String check = (String) request.getParameter("check");
			String productID = (String) request.getParameter("productID");
			if (check != null && check.equals("true")) { %>
				<meta http-equiv="refresh" content="0; URL=../item_details.jsp?productID=<%=productID%>" />
			<%
			}
			Product p = ProductDM.getProductBasedOnID(productID);
			%>

			
			<%--header--%>
			<div data-role="header" data-position="inline" data-position="fixed">
				<a href="#" data-icon="info" data-iconpos="notext">Logo</a>
			    <h1>Item Details</h1>
			</div>

			<div style="width:90%;margin-left:auto;margin-right:auto;">
				 
				<img src="<%=p.getImgRef()%>">
				 
				<b><%=p.getProductName()%></b><br>
							
				<i><%=p.getDescription()%></i><br><br>
				
				<table width="90%">
					<tr><td><b>Price</b></td><td><b>Likes</b></td></tr>
					<tr><td>SGD<%=p.getPrice()%></td><td><%=p.getLikes()%></td></tr>
				</table>
				<br>			
				<%
				Location loc = ProductDM.getLocation(p.getProductID());
				%>
				
				<b>Where to buy</b>

					
					<select name="loc" id="loc" onchange="locChange()" data-mini="true">
						<optgroup label="<%=loc.getShoppingMall1()%>">
							<option value="1"><%=loc.getStore1()%> (<%=loc.getDist1()%>km away)</option>
						</optgroup>
						<optgroup label="<%=loc.getShoppingMall2()%>">
							<option value="2"><%=loc.getStore2()%> (<%=loc.getDist2()%>km away)</option>
						</optgroup>
						<optgroup label="<%=loc.getShoppingMall3()%>">
							<option value="3"><%=loc.getStore3()%> (<%=loc.getDist3()%>km away)</option>
						</optgroup>
					</select>
				
				<h10>
					<i><%=loc.getStockLevel1()%> in-stock</i>
				</h10>
				
				<h11>
					<i><%=loc.getStockLevel2()%> in-stock</i>
				</h11>
				
				<h12>
					<i><%=loc.getStockLevel3()%> in-stock</i>
				</h12>
				


				<br><br>
				
				<a id="seeReviewBtn" href="#seeReviews" data-position-to="window" data-transition="pop" data-rel="popup" class="ui-btn ui-icon-arrow-r ui-btn-icon-right" data-mini="true">See reviews</a>
				
				
				<div data-role="popup" id="seeReviews" class="ui-content">
					<a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn ui-icon-delete ui-btn-icon-notext ui-btn-right" >Close</a>
					<%
					String[] reviewList = p.getReviewList();
					%>
					<p><b>Andrea Tay: </b><%=reviewList[0]%></p>
					<p><b>Tan Hui Qi: </b><%=reviewList[1]%></p>
			
				</div>
			
				
				
				<%-- The "Add to compare list" button and its pop-up window--%>
				
				<form action="addProduct" method="GET">
					<input id ="idToSend" type="hidden" name="productID" value="<%=p.getProductID()%>"></input>	<br>
					<button type="submit" id="addToCompareBtn" align="center" style="width: 100%; background: green" data-mini="true">Add to Compare List!</button>				
				</form>
						
				<div data-role="popup" id="successAdd" class="ui-content">
					<a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn ui-icon-delete ui-btn-icon-notext ui-btn-right" >Close</a>
					<h3>Item added!</h3>
				</div>
				
			</div>

			<div data-role="footer"  data-position="fixed">

<div data-role="navbar">

<ul>

<li><a href="../whatsnew.jsp?check=true" rel="external" data-icon="star">What's New</a>

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