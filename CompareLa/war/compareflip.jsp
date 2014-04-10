<%@page import="app.*, entity.*, datamanager.*, java.util.*;" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="jquery.mobile-1.4.1/jquery.mobile-1.4.1.min.css">
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.1/jquery.mobile-1.4.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/del.min.css">

<style>

.bluredImages {
opacity: 0.3;   
}

.deleteIcon
{
float:left;width:100px;
}

.readmore {
background: #2f2f2f;
text-align: center;
display: block;
width: 250px;
border-radius:8px;
-moz-border-radius:8px;
-webkit-border-radius:8px;
box-shadow: 0px 3px 5px #000;
-moz-box-shadow: 0px 3px 5px #000;
-webkit-box-shadow: 0px 3px 5px #000;
}

.ui-slider-switch 
{ 
width: 8em !important ;
}
.delButton
{
position:relative; 
left:62px; 
bottom:103px;


}

}
.readmore:hover {
position:relative;
top:3px;
color: #fqq;
box-shadow:none;
-moz-box-shadow:none;
-webkit-box-shadow:none;
}

.shadow
{
	box-shadow: 0px 3px 10px #000;
	-moz-box-shadow: 10px 13px 15px #000;
}

table,th,td
{


padding:6px;
text-align:center;
border-spacing:5px;
table-layout:fixed;




}

.styled-select select {
   background: transparent;
   width: 268px;
   padding: 5px;
   font-size: 16px;
   line-height: 1;
   border: 0;
   border-radius: 0;
   height: 34px;
   -webkit-appearance: none;
   }


  h6 {display:none;}
  h3 {display:none;}
  h4 {display:none;}
  h5 {display:none;}
  
  h20 {display:none;}
  h40 {display:none;}
  
  
.ui-grid-b img {
    width: 90%;
    height: 10%;
    display: block;
    margin-left: auto;
    margin-right: auto;
}
.ui-grid-b div {
    width: 75%;
    height: auto;
    display: block;
    margin-left: auto;
    margin-right: auto;
}

.ui-grid-b>.ui-block-a, .ui-grid-b>.ui-block-b, .ui-grid-b>.ui-block-c {
	width: 33.333%;
	height: 105px;
}

p {
    font-size: 12px;
    font-family: Century Gothic;
}

.basith 
{
	
	top:39px;
	left:200px;
	
}        
</style>

<script type="text/javascript">

var price1 = 0;
var location1=0;
var stocks1=0;
var likes1=0;
var ratings1=0;
var id1="";
var pic1="";
var crosser1="";


var price2 = 0;
var location2=0;
var stocks2=0;
var likes2=0;
var ratings2=0;
var id2="";
var pic2="";
var crosser2="";

$(document).ready(function() {
	
	if ($("#pid").attr("value")==0) {
		$(".delButton").hide();
	}
	console.log("ref:" + location.href);
	
	if (GetUrlValue("dialog")=="true") {
		//alert("here");
		close1();
	}
	
	if ($("h6:first").is(":hidden")) {
		$("h6").slideDown("slow");
		} else {
		$("h6").hide();
		}
	
	
});

function showPopupForComparator(){
    
	$("<div class='ui-loader ui-overlay-shadow ui-body-e ui-corner-all'>You have not selected any items in the comparator yet!</div>")
    .css({ "backgroundColor":"white","display":"block","top": $(window).scrollTop() + 300 , "left": $(window).scrollTop() + 0})
    .appendTo( $("body") )
    .delay( 500 )
    .fadeOut( 300, function(){
        $(this).remove();
    });

}

function all()

{
	
	var item1=0;
	var item2=0;
	
	
	
	if($("#a").val()=="on")
	{
		
		
		
		if(price2>price1)
		{
			
			item1++;
		}
		
		else if(price1>price2)
		{
			
			
			item2++;
		}
		
	}
	
	if($("#b").val()=="on")
	{
		
		if(location1>location2)
		{
			
			item2++;
		}
		else if(location2>location1)
		{
			
			
			item1++;
		}
	}
	
	if($("#c").val()=="on")
	{
		
		if(stocks1>stocks2)
		{
			
			item1++;
		}
		else if(stocks2>stocks1)
		{
			
			
			item2++;
		}
	}
	
	if($("#d").val()=="on")
	{
		
		if(likes1>likes2)
		{
			
			item1++;
		}
		else if(likes2>likes1)
		{
			
			
			item2++;
		}
	}
	
	
	if($("#e").val()=="on")
	{
		
		if(ratings1>ratings2)
		{
			
			item1++;
		}
		else if(ratings2>ratings1)
		{
			
			
			item2++;
		}
	}
	
	
	
	
	if(item1==0 && item2==0 && price1==0||price2==0)
    {
          
           showPopupForComparator();
           return 0;
    }
    else if(item1==0 && item2==0)
    {
          
          
          
           return 0;
    }
    else if(price1==0 || price2==0)
    {
          
           showPopupForComparator();
          
           return 0;
    }
   
    else if(item1==item2)
    {
          
           return 3;
    }
    else if(item1> item2)
    {
          
           return 1;
    }
   
    else if(item2>item1)
    {
          
           return 2;
    }
	
	
}



$(function() {
	   $('#a').change(function(){
		   
		   
		   var x=all();
		  
		   
		   
		if(x==0)
		{
			document.getElementById("img1").style.borderColor="white";
			document.getElementById("img1").style.borderWidth="thick";
			document.getElementById("img2").style.borderColor="white";
			document.getElementById("img2").style.borderWidth="thick";
			$('#img2').removeClass('bluredImages');
			$('#name2').removeClass('bluredImages');
			$('#img1').removeClass('bluredImages');
			$('#name1').removeClass('bluredImages');
			
			 
		}
		if(x==1)
		{
			 
			 document.getElementById("img2").style.borderColor="white";
				document.getElementById("img2").style.borderWidth="thick";
				$('#img2').addClass('bluredImages');
				$('#name2').addClass('bluredImages');
				
				document.getElementById("img1").style.border="thick solid #D7534B";
				$('#img1').removeClass('bluredImages');
				$('#name1').removeClass('bluredImages');
			
		}
		if(x==2)
		{
			 document.getElementById("img1").style.borderColor="white";
				document.getElementById("img1").style.borderWidth="thick";
				$('#img1').addClass('bluredImages');
				$('#name1').addClass('bluredImages');
				
			 document.getElementById("img2").style.border="thick solid #D7534B"; 
			 $('#img2').removeClass('bluredImages');
				$('#name2').removeClass('bluredImages');
		}
		
		if(x==3)
		{
			
			document.getElementById("img1").style.border="thick solid #D7534B"; 
			document.getElementById("img2").style.border="thick solid #D7534B"; 
			$('#img2').removeClass('bluredImages');
			$('#name2').removeClass('bluredImages');
			$('#img1').removeClass('bluredImages');
			$('#name1').removeClass('bluredImages');
			
			
		}
 });  
	   
	   
	   
  $('#b').change(function(){
		   
		   
		   var x=all();
		  
		   
		   
		if(x==0)
		{
			document.getElementById("img1").style.borderColor="white";
			document.getElementById("img1").style.borderWidth="thick";
			document.getElementById("img2").style.borderColor="white";
			document.getElementById("img2").style.borderWidth="thick";
			$('#img2').removeClass('bluredImages');
			$('#name2').removeClass('bluredImages');
			$('#img1').removeClass('bluredImages');
			$('#name1').removeClass('bluredImages');
			
			 
		}
		if(x==1)
		{
			 
			 document.getElementById("img2").style.borderColor="white";
				document.getElementById("img2").style.borderWidth="thick";
				$('#img2').addClass('bluredImages');
				$('#name2').addClass('bluredImages');
				
				document.getElementById("img1").style.border="thick solid #D7534B";
				$('#img1').removeClass('bluredImages');
				$('#name1').removeClass('bluredImages');
			
		}
		if(x==2)
		{
			 document.getElementById("img1").style.borderColor="white";
				document.getElementById("img1").style.borderWidth="thick";
				$('#img1').addClass('bluredImages');
				$('#name1').addClass('bluredImages');
				
			 document.getElementById("img2").style.border="thick solid #D7534B"; 
			 $('#img2').removeClass('bluredImages');
				$('#name2').removeClass('bluredImages');
		}
		
		if(x==3)
		{
			
			document.getElementById("img1").style.border="thick solid #D7534B"; 
			document.getElementById("img2").style.border="thick solid #D7534B"; 
			$('#img2').removeClass('bluredImages');
			$('#name2').removeClass('bluredImages');
			$('#img1').removeClass('bluredImages');
			$('#name1').removeClass('bluredImages');
			
			
		}
 });  
  
  
  
  $('#c').change(function(){
	   
	   
	   var x=all();
	  
	   
	   
	if(x==0)
	{
		document.getElementById("img1").style.borderColor="white";
		document.getElementById("img1").style.borderWidth="thick";
		document.getElementById("img2").style.borderColor="white";
		document.getElementById("img2").style.borderWidth="thick";
		$('#img2').removeClass('bluredImages');
		$('#name2').removeClass('bluredImages');
		$('#img1').removeClass('bluredImages');
		$('#name1').removeClass('bluredImages');
		
		 
	}
	if(x==1)
	{
		 
		 document.getElementById("img2").style.borderColor="white";
			document.getElementById("img2").style.borderWidth="thick";
			$('#img2').addClass('bluredImages');
			$('#name2').addClass('bluredImages');
			
			document.getElementById("img1").style.border="thick solid #D7534B";
			$('#img1').removeClass('bluredImages');
			$('#name1').removeClass('bluredImages');
		
	}
	if(x==2)
	{
		 document.getElementById("img1").style.borderColor="white";
			document.getElementById("img1").style.borderWidth="thick";
			$('#img1').addClass('bluredImages');
			$('#name1').addClass('bluredImages');
			
		 document.getElementById("img2").style.border="thick solid #D7534B"; 
		 $('#img2').removeClass('bluredImages');
			$('#name2').removeClass('bluredImages');
	}
	
	if(x==3)
	{
		
		document.getElementById("img1").style.border="thick solid #D7534B"; 
		document.getElementById("img2").style.border="thick solid #D7534B"; 
		$('#img2').removeClass('bluredImages');
		$('#name2').removeClass('bluredImages');
		$('#img1').removeClass('bluredImages');
		$('#name1').removeClass('bluredImages');
		
		
	}
});  
  
  
  $('#d').change(function(){
	   
	   
	   var x=all();
	  
	   
	   
	if(x==0)
	{
		document.getElementById("img1").style.borderColor="white";
		document.getElementById("img1").style.borderWidth="thick";
		document.getElementById("img2").style.borderColor="white";
		document.getElementById("img2").style.borderWidth="thick";
		$('#img2').removeClass('bluredImages');
		$('#name2').removeClass('bluredImages');
		$('#img1').removeClass('bluredImages');
		$('#name1').removeClass('bluredImages');
		
		 
	}
	if(x==1)
	{
		 
		 document.getElementById("img2").style.borderColor="white";
			document.getElementById("img2").style.borderWidth="thick";
			$('#img2').addClass('bluredImages');
			$('#name2').addClass('bluredImages');
			
			document.getElementById("img1").style.border="thick solid #D7534B";
			$('#img1').removeClass('bluredImages');
			$('#name1').removeClass('bluredImages');
		
	}
	if(x==2)
	{
		 document.getElementById("img1").style.borderColor="white";
			document.getElementById("img1").style.borderWidth="thick";
			$('#img1').addClass('bluredImages');
			$('#name1').addClass('bluredImages');
			
		 document.getElementById("img2").style.border="thick solid #D7534B"; 
		 $('#img2').removeClass('bluredImages');
			$('#name2').removeClass('bluredImages');
	}
	
	if(x==3)
	{
		
		document.getElementById("img1").style.border="thick solid #D7534B"; 
		document.getElementById("img2").style.border="thick solid #D7534B"; 
		$('#img2').removeClass('bluredImages');
		$('#name2').removeClass('bluredImages');
		$('#img1').removeClass('bluredImages');
		$('#name1').removeClass('bluredImages');
		
		
	}
});  
  
  
  $('#e').change(function(){
	   
	   
	   var x=all();
	  
	   
	   
	if(x==0)
	{
		document.getElementById("img1").style.borderColor="white";
		document.getElementById("img1").style.borderWidth="thick";
		document.getElementById("img2").style.borderColor="white";
		document.getElementById("img2").style.borderWidth="thick";
		$('#img2').removeClass('bluredImages');
		$('#name2').removeClass('bluredImages');
		$('#img1').removeClass('bluredImages');
		$('#name1').removeClass('bluredImages');
		 
	}
	if(x==1)
	{
		 
		 document.getElementById("img2").style.borderColor="white";
			document.getElementById("img2").style.borderWidth="thick";
			$('#img2').addClass('bluredImages');
			$('#name2').addClass('bluredImages');
			
			document.getElementById("img1").style.border="thick solid #D7534B";
			$('#img1').removeClass('bluredImages');
			$('#name1').removeClass('bluredImages');
		
	}
	if(x==2)
	{
		 document.getElementById("img1").style.borderColor="white";
			document.getElementById("img1").style.borderWidth="thick";
			$('#img1').addClass('bluredImages');
			$('#name1').addClass('bluredImages');
			
		 document.getElementById("img2").style.border="thick solid #D7534B"; 
		 $('#img2').removeClass('bluredImages');
			$('#name2').removeClass('bluredImages');
	}
	
	if(x==3)
	{
		
		document.getElementById("img1").style.border="thick solid #D7534B"; 
		document.getElementById("img2").style.border="thick solid #D7534B"; 
		$('#img2').removeClass('bluredImages');
		$('#name2').removeClass('bluredImages');
		$('#img1').removeClass('bluredImages');
		$('#name1').removeClass('bluredImages');
		
		
	}
});  

	});



function hightlightNone()
{
	
	document.getElementById("img1").style.borderColor="white";
	document.getElementById("img1").style.borderWidth="thick";
	
	
	
}

function hightlightItem1()
{
	hightlightNone();
	
	 document.getElementById("img1").style.border="thick solid #d7534b";
	
}


function hightlightItem2()
{
	hightlightNone();
	
	 document.getElementById("img2").style.border="thick solid #d7534b";
	
}
function myYellow()
{
	
	document.getElementById('img1').src="../products/female_top1.png";
	document.getElementById('first_1').src="../products/female_top1_selected.png";
	$("h4").show();
	$("cross1").hide();

}

function myBlue()
{
	document.getElementById('img2').src="../products/female_top2.png";
	document.getElementById('second_1').src="../products/female_top2_selected.png";
	$("h5").show();
	$("cross2").hide();
}

function removeFirst()
{
	document.getElementById('img1').src="../images/question_mark.png";
	document.getElementById("camprice").innerHTML="";
	document.getElementById("p1").innerHTML="";
	document.getElementById("p2").innerHTML="";
	document.getElementById("p3").innerHTML="";
	document.getElementById("s1").innerHTML="";
	document.getElementById("s2").innerHTML="";
	document.getElementById("s3").innerHTML="";
	document.getElementById("liking1").innerHTML="";
	 $('#ratings').attr("src","");
	 $('#l1').attr("label","");
	 $('#l2').attr("label","");
	 $('#l3').attr("label","");
	 $(id1).attr("src",pic1);
	 $(crosser1).show();
	
	 

		
		 price1 = 0;
		 location1=0;
		 stocks1=0;
		 likes1=0;
		 ratings1=0;
		 id1="";
		 pic1="";
		 crosser1="";
	
	$("h4").hide();
	
}

function removeSecond()
{
	document.getElementById('img2').src="../images/question_mark.png";
	document.getElementById("camprice1").innerHTML="";
	document.getElementById("pp1").innerHTML="";
	document.getElementById("pp2").innerHTML="";
	document.getElementById("pp3").innerHTML="";
	document.getElementById("ss1").innerHTML="";
	document.getElementById("ss2").innerHTML="";
	document.getElementById("ss3").innerHTML="";
	document.getElementById("liking2").innerHTML="";
	$('#ratings1').attr("src","");
	$('#ll1').attr("label","");
	$('#ll2').attr("label","");
	$('#ll3').attr("label","");
	 $(id2).attr("src",pic2);
	 $(crosser2).show();
	
	 price2 = 0;
	 location2=0;
	 stocks2=0;
	 likes2=0;
	 ratings2=0;
	 id2="";
	 pic2="";
	 crosser2="";
	 
	$("h5").hide();
	
	
	
	
}



function close1(){
	
	$("<div class='ui-loader ui-overlay-shadow ui-body-e ui-corner-all'><h2>Deleted</h2></div>")
    .css({ "backgroundColor":"white","display":"block","top": $(window).scrollTop() + 300 , "left": $(window).scrollTop() + 117})
    .appendTo( $("body") )
    .delay( 500 )
    .fadeOut( 800, function(){
        $(this).remove();
    });

}



function compare()
{
	
	if (($('#img1').attr("src")== "../images/question_mark.png") && ($('#img2').attr("src")== "../images/question_mark.png")) {
		
		showPopupForComparator();
		
	} else {
		var x=all();
  		//alert(x);
		if(x==0&& (price1==0 ||price2==0))
        {
              
	        showItems();
	        return;
       
        }
		
		
		else if(x==0)
		{
			document.getElementById("img1").style.borderColor="white";
			document.getElementById("img1").style.borderWidth="thick";
			document.getElementById("img2").style.borderColor="white";
			document.getElementById("img2").style.borderWidth="thick";
			
			 
		}
		else if(x==1)
		{
			 
			 document.getElementById("img2").style.borderColor="white";
				document.getElementById("img2").style.borderWidth="thick";
				$('#img2').addClass('bluredImages');
				$('#name2').addClass('bluredImages');
				
				document.getElementById("img1").style.border="thick solid #D7534B";
				$('#img1').removeClass('bluredImages');
				$('#name1').removeClass('bluredImages');
			
		}
		else if(x==2)
		{
			 document.getElementById("img1").style.borderColor="white";
				document.getElementById("img1").style.borderWidth="thick";
				$('#img1').addClass('bluredImages');
				$('#name1').addClass('bluredImages');
				
			 document.getElementById("img2").style.border="thick solid #D7534B"; 
			 $('#img2').removeClass('bluredImages');
				$('#name2').removeClass('bluredImages');
		}
		
		else if(x==3)
		{
			
			document.getElementById("img1").style.border="thick solid #D7534B"; 
			document.getElementById("img2").style.border="thick solid #D7534B"; 
			$('#img2').removeClass('bluredImages');
			$('#name2').removeClass('bluredImages');
			$('#img1').removeClass('bluredImages');
			$('#name1').removeClass('bluredImages');
			
			
		}
		
	$("h2").hide();
	
	$("h3").show();
	
	$('#delete1').hide();
	//$('#info1').hide();
	$('#delete2').hide();
	//$('#info2').hide();
	
	//document.getElementById('delete1').style.visibility = 'hidden';
	//document.getElementById('info1').style.visibility = 'hidden';
	//document.getElementById('delete2').style.visibility = 'hidden';
	//document.getElementById('info2').style.visibility = 'hidden';

	}
}
function showItems()
{
	
	$("h3").hide();
	$("h2").show();
	document.getElementById("img1").style.borderColor="white";
	document.getElementById("img1").style.borderWidth="thick"
	document.getElementById("img2").style.borderColor="white";
	document.getElementById("img2").style.borderWidth="thick"
	
		$('#img2').removeClass('bluredImages');
	$('#name2').removeClass('bluredImages');
	$('#img1').removeClass('bluredImages');
	$('#name1').removeClass('bluredImages');
	
	
	$('#delete1').show();
	//$('#info1').show();
	$('#delete2').show();
	//$('#info2').show();
	
	/*
	document.getElementById('delete1').style.visibility = 'visible';
	document.getElementById('info1').style.visibility = 'visible';
	document.getElementById('delete2').style.visibility = 'visible';
	document.getElementById('info2').style.visibility = 'visible';
	*/
		
}
/*
function truncateStringsForDisplay(string) {
	alert(string.length);
	var strs = string.split(" ");
	var length=0;
	var displayStr="";
	
	for (var i = 0; i < strs.length; i++) {
	    
		length+=strs[i].length;
		alert(strs[i]);
		if (length<=13) {
			displayStr += strs[i];
			
			break;
		}
	}

}
*/
function change(name,id,cross,title,price,mall1,mall2,mall3,shop1,shop2,shop3,stock1,stock2,stock3,dist1,dist2,dist3,likes,ratings,review1,review2) {
	//alert(name+ " " +id+ " " +cross+ " " +title+ " " +price+ " YYYYYYYYY" +mall1+ " " +mall2+ " " +mall3+ " " +shop1+ " " +shop2+ " " +shop3+ " " +stock1+ " " +stock2+ " " +stock3+ " " +dist1+ " " +dist2+ " " +dist3+ " " +likes+ " " +ratings+ " " +review);
	
	if ($('#img1').attr("src")== "../images/question_mark.png") {
		
		id1=id;
		pic1=name;
		price1 = parseInt(price);
		location1=parseInt(dist1);
		stocks1=parseInt(stock1);
		likes1=parseInt(likes);
		ratings1=parseInt(ratings);
		crosser1=cross;
		
		
		if(ratings==1)
		 {
		 	$('#ratings').attr("src","../images/1star.png");
	 	}
		else if(ratings==2)
		 {
			 $('#ratings').attr("src","../images/2star.png");
		 }
		 else if(ratings==3)
		 {
			 $('#ratings').attr("src","../images/3star.png");
		 }
		 else if(ratings==4)
		 {
			 $('#ratings').attr("src","../images/4star.png");
		 }
		 else
		 {
			 $('#ratings').attr("src","../images/5star.png");
		 }
		
		$('#img1').attr("src",name);
		$(id).attr("src","../images/selected.png");
		$(cross).hide();
		
		document.getElementById("name1").innerHTML=title; 
		$("h4").show();
		document.getElementById("camprice").innerHTML="SGD$" + price;
		document.getElementById("p1").innerHTML=shop1 +" ("+ dist1 +"km away)";
		document.getElementById("p2").innerHTML=shop2 +" ("+ dist2 +"km away)";
		document.getElementById("p3").innerHTML=shop3+" ("+ dist3+"km away)";
		document.getElementById("s1").innerHTML=stock1;
		document.getElementById("s2").innerHTML=stock2;
		document.getElementById("s3").innerHTML=stock3;
		document.getElementById("liking1").innerHTML=likes;
		document.getElementById("myPopup").innerHTML="- "+ review1 + "<br>" +"- "+review2;
		$('#l1').attr("label",mall1);
		$('#l2').attr("label",mall2);
		$('#l3').attr("label",mall3);
		
	
	     
		
		
	} else if ($('#img2').attr("src")== "../images/question_mark.png") {
		
		
		id2=id;
		pic2=name;
		price2= parseInt(price);
		location2=parseInt(dist1);
		stocks2=parseInt(stock1);
		likes2=parseInt(likes);
		ratings2=parseInt(ratings);
		crosser2=cross;
		
		if(ratings==1)
		 {
		 	$('#ratings1').attr("src","../images/1star.png");
	 	}
		else if(ratings==2)
		 {
			 $('#ratings1').attr("src","../images/2star.png");
		 }
		 else if(ratings==3)
		 {
			 $('#ratings1').attr("src","../images/3star.png");
		 }
		 else if(ratings==4)
		 {
			 $('#ratings1').attr("src","../images/4star.png");
		 }
		 else
		 {
			 $('#ratings1').attr("src","../images/5star.png");
		 }
		
		$('#img2').attr("src",name);
		$(id).attr("src","../images/selected.png");
		$(cross).hide();
		document.getElementById("name2").innerHTML=title;
		$("h5").show();
		
		document.getElementById("camprice1").innerHTML="SGD$" + price;
		document.getElementById("pp1").innerHTML=shop1+" ("+ dist1 +"km away)";
		document.getElementById("pp2").innerHTML=shop2+" ("+ dist2 +"km away)";
		document.getElementById("pp3").innerHTML=shop3+" ("+ dist3 +"km away)";
		document.getElementById("ss1").innerHTML=stock1;
		document.getElementById("ss2").innerHTML=stock2;
		document.getElementById("ss3").innerHTML=stock3;
		document.getElementById("liking2").innerHTML=likes;
		document.getElementById("myPopup1").innerHTML="- "+ review1 + "<br>" +"- "+review2;
		
		$('#ll1').attr("label",mall1);
		$('#ll2').attr("label",mall2);
		$('#ll3').attr("label",mall3);
		
		
		
		
	} else {
		$("<div class='ui-loader ui-overlay-shadow ui-body-e ui-corner-all'>Your comparator has 2 items currently!</div>")
	    .css({ "backgroundColor":"white","display":"block","top": $(window).scrollTop() + 300 , "left": $(window).scrollTop() + 100})
	    .appendTo( $("body") )
	    .delay( 500 )
	    .fadeOut( 300, function(){
	        $(this).remove();
	    });
	}
	
	
	
}
function delThis(form) {
	setTimeOut(function() {form.submit()}, 0);
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


function addToComparator(value) {
	
	//alert("into");
	if (value==1) {
		$("#delBtn1").hide();
	} else if (value==2) {
		$("#delBtn2").hide();
	} else if (value==3) {
		$("#delBtn3").hide();
	} else if (value==4) {
		$("#delBtn4").hide();
	} else if (value==5) {
		$("#delBtn5").hide();
	} else if (value==6) {
		$("#delBtn6").hide();
	}
}




function locChange() {
	$("h20").show();
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

function locChange2() {
	$("h40").show();
    if (document.getElementById("loc2").value == '1'){
    	$("h30").show();
        $("h31").hide();
        $("h32").hide();
    }     
    else if (document.getElementById("loc2").value == '2'){
        $("h30").hide();
        $("h31").show();
        $("h32").hide();
    }        
    else if (document.getElementById("loc2").value == '3'){
    	$("h30").hide();
        $("h31").hide();
        $("h32").show();
    }
}

</script>

</head>
<body>

<%
	
	String check = (String) request.getParameter("check");
	//String num = (String) request.getParameter("num");
	String dialog = request.getParameter("dialog");
	if (check != null && check.equals("true")) { 
	%>
		<meta http-equiv="refresh" content="0; url=../compareflip.jsp?dialog=<%=dialog %>" />
	<%}
	

	
	int id1=0;
	int id2=0;
	int id3=0;
	int id4=0;
	int id5=0;
	int id6=0;
	
	
	List<ComparedProduct> bucket = ComparedProductList.getAllProducts();
	ArrayList<String> finalList = new ArrayList<String>();
	//System.out.println("Bucket size is: " + bucket.size());
	
	boolean empty=true;
	%>
	<script>
		//document.getElementById("bucketzero").setAttribute("style","display:none;");
	</script>
	<%
	
	try {
		if (bucket.size()==0) {
			//System.out.println("entered");
	%>
		<script type="text/javascript">
		$("<div class='ui-loader ui-overlay-shadow ui-body-e ui-corner-all'>You have no items in your compare list currently!</div>")
	    .css({ "backgroundColor":"white","display":"block","top": $(window).scrollTop() + 300 , "left": $(window).scrollTop() + 0})
	    .appendTo( $("body") )
	    .delay( 500 )
	    .fadeOut( 900, function(){
	        $(this).remove();
	    });
		</script>
	<%
			
		} else {
			empty=false;
			ArrayList<String> idList = new ArrayList<String>();
			
			for (ComparedProduct cp : bucket) {
				idList.add(String.valueOf(cp.getID()));
			}
			
			
			HashSet hs = new HashSet();
			hs.addAll(idList);
			finalList.addAll(hs);
		}
	}	catch (Exception e) {
		e.printStackTrace();
	}
	
	
	%>

<!--header-->  
<div data-role="header" data-position="inline" data-position="fixed">
	<a href="#tutorial" data-rel="popup" data-icon="info" data-iconpos="notext" data-transition="fade"></a>
    <h1>Compare Items</h1>
</div>

<%-- Tutorial Div --%>     

<div data-role="popup" id="tutorial" data-overlay-theme="b" data-theme="b" data-corners="false">
    <a href="#" data-rel="back" class="ui-btn ui-corner-all ui-shadow ui-btn-a ui-icon-delete ui-btn-icon-notext ui-btn-right">Close</a><img class="popphoto" src="../tutorial/comparehelp.PNG" style="max-height:512px;">
</div>
	
	
	
  <div data-role="footer" data-position="fixed">
    <div data-role="navbar">
      <ul>
        <li><a href="../whatsnew.jsp?check=true" rel="external" data-icon="star">What's New</a></li>
        <li><a href="../search.jsp" rel="external" data-icon="search">Search</a></li>
        <li><a href="../snap.jsp" rel="external" data-icon="camera">Snap</a></li>
        <li><a href="../compareflip.jsp" rel="external" class="ui-btn-active" data-icon="check">Compare</a></li>
      </ul>
    </div>
  </div>


<h6>
	<!--Display Question Marks-->
	<fieldset id="any" class="ui-grid-c">

			
       
          	<div class="ui-block-a">
				 <img id="img1" img alt="" src="../images/question_mark.png" border="0" style="height: 150px; width: 110px; margin-top: 0em;margin-left: 1.2em;" />
				 
          	</div>

 			<div class="ui-block-b">
			 	<h4>
					 <!-- <button  type="button" onclick="removeFirst()"  class="ui-btn ui-shadow ui-corner-all ui-icon-delete ui-btn-icon-notext"  style="background-color: rgba(0, 0, 0, 0);border: none; box-shadow: none; top:-15px;left:17px"></button> -->
 					<image id="delete1" src="../images/delete.png" onclick="removeFirst()" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext" style="left:20px; bottom:11px; width:20%;height:20%;" />
 					<!-- 
 					
					 <button id="info1" type="button" onclick="removeFirst()"  class="ui-btn ui-shadow ui-corner-all ui-icon-info ui-btn-icon-notext" style="background-color: rgba(0, 0, 0, 0);border: none; box-shadow: none;top:-51px;left:-68px"></button> -->
 				 	<table width="130" style="position:absolute;top:213px;left:5px">
						<tr>
  							<td><div id="name1" style="font-size:11px;"></div></td>
 
						</tr>
					</table> 
 				
 				</h4>            
 			</div>
              
          	<div class="ui-block-c">
          		<img id="img2" img alt="" src="../images/question_mark.png" border="0" borderColor="white" style="height: 150px; width: 110px; margin-top: 0em;margin-left: 3.4em;" />
          		
				  		
			</div>
				 
			<div class="ui-block-d">
				<h5>
			 		 <!-- <button id="delete2" type="button" onclick="removeSecond()"  class="ui-btn ui-shadow ui-corner-all ui-icon-delete ui-btn-icon-notext" style="background-color: rgba(0, 0, 0, 0);border: none; box-shadow: none; top:-15px;left:41px"></button> -->
                 	<image id="delete2" src="../images/delete.png" onclick="removeSecond()" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext" style="left:43px; bottom:13px; width:20%;height:20%;"/>
                 	<!-- 
                 	<button id="info2" type="button" onclick="removeFirst()" class="ui-btn ui-shadow ui-corner-all ui-icon-info ui-btn-icon-notext" style="background-color: rgba(0, 0, 0, 0);border: none; box-shadow: none;top:-51px;left:-44px"></button> -->
 				 	<table width="130" style="position:absolute;top:213px;left:190px">
						<tr>
  							<td><div id="name2" style="font-size:11px;"></div></td>
 
						</tr>
					</table> 
                 </h5>
 			</div>
	</fieldset>


		
<h2>		<!--Compare Button-->
			<button id ="first" type="button" data-mini="true" onclick="compare()" style="top:0px;width:95%;margin-left:auto;margin-right:auto;">Compare</button> 
		     
	<!--Images of Items-->
	<div class="ui-grid-b">
		<div class="ui-block-a" >
			<!-- 
			<div style="position:absolute;padding-left:70px;">
							
				<form action="deleteProduct" method="GET" style="vertical-align: top;">
					<input id ="idToSend" type="hidden" name="productID" value=""></input>					
					<input id="toDelete" type="image" src="../images/delete.png" alt="Submit Form" class="ui-btn ui-shadow ui-corner-all ui-icon-delete ui-btn-icon-notext"  />
					
				</form>
				
								
			</div> -->
			
			

		<img 
			<%try 
					{
							
						if (!empty && finalList.get(0)!=null) 
						{	
							id1=Integer.parseInt(ProductDM.getProductBasedOnID(finalList.get(0)).getProductID()); %>
							 id="first_1" onclick="change('<%=ProductDM.getProductBasedOnID(finalList.get(0)).getImgRef()%>','#first_1','cross1','<%=ProductDM.getProductBasedOnID(finalList.get(0)).getProductName()%>','<%=ProductDM.getProductBasedOnID(finalList.get(0)).getPrice()%>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(0)).getProductID()).getShoppingMall1() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(0)).getProductID()).getShoppingMall2() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(0)).getProductID()).getShoppingMall3() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(0)).getProductID()).getStore1() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(0)).getProductID()).getStore2() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(0)).getProductID()).getStore3() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(0)).getProductID()).getStockLevel1() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(0)).getProductID()).getStockLevel2() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(0)).getProductID()).getStockLevel3() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(0)).getProductID()).getDist1() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(0)).getProductID()).getDist2() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(0)).getProductID()).getDist3() %>',
							 '<%=ProductDM.getProductBasedOnID(finalList.get(0)).getLikes()%>',
							 '<%=ProductDM.getProductBasedOnID(finalList.get(0)).getRatings()%>',
							 '<%=ProductDM.getProductBasedOnID(finalList.get(0)).getReviewList()[0]%>',
							 '<%=ProductDM.getProductBasedOnID(finalList.get(0)).getReviewList()[1]%>'
							 
							 )" alt="" src="<%=ProductDM.getProductBasedOnID(finalList.get(0)).getImgRef()%>" 
							
							<%
							
						} else {
							%>
								alt="" src="../images/add-item.png
							<%	
						}
						
					} catch (Exception e) 
					{
						%>
							alt="" src="../images/add-item.png
						<%
					}
		
					%>" border="1" style="width: 90px; height: 95px;margin-left: 8px;" onclick="addToComparator(1)"/>
			<cross1>
			<div class="delButton ui-add-icon-left" >
				<form action="deleteProduct" method="GET">
					<input id ="pid" type="hidden" name="productID" value="<%=id1%>"></input>					
					<input id ="delBtn1" style="width:25%;height:25%;" type="image" src="../images/trash.png" alt="Submit Form" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext" />
					
				</form>

			</div>
			</cross1>
			<!-- 		
			<cross1>
		    	<button type="button" onclick="close1()" class="ui-btn ui-shadow ui-corner-all ui-icon-delete ui-btn-icon-notext"  style="background-color: rgba(0, 0, 0, 0);border: none; box-shadow: none;top:-104px;left:73px"></button>  
			</cross1> -->
		</div>
		
		
		<div class="ui-block-b">
			<img 
			<%try 
					{
						if (!empty && finalList.get(1)!=null) 
						{	
							id2=Integer.parseInt(ProductDM.getProductBasedOnID(finalList.get(1)).getProductID());
						%>
							  id="second_1" onclick="change('<%=ProductDM.getProductBasedOnID(finalList.get(1)).getImgRef()%>','#second_1','cross2','<%=ProductDM.getProductBasedOnID(finalList.get(1)).getProductName()%>','<%=ProductDM.getProductBasedOnID(finalList.get(1)).getPrice()%>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(1)).getProductID()).getShoppingMall1() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(1)).getProductID()).getShoppingMall2() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(1)).getProductID()).getShoppingMall3() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(1)).getProductID()).getStore1() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(1)).getProductID()).getStore2() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(1)).getProductID()).getStore3() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(1)).getProductID()).getStockLevel1() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(1)).getProductID()).getStockLevel2() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(1)).getProductID()).getStockLevel3() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(1)).getProductID()).getDist1() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(1)).getProductID()).getDist2() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(1)).getProductID()).getDist3() %>',
							 '<%=ProductDM.getProductBasedOnID(finalList.get(1)).getLikes()%>',
							 '<%=ProductDM.getProductBasedOnID(finalList.get(1)).getRatings()%>',
							 '<%=ProductDM.getProductBasedOnID(finalList.get(1)).getReviewList()[0]%>',
							 '<%=ProductDM.getProductBasedOnID(finalList.get(1)).getReviewList()[1]%>'
							 
							 )" alt="" src="<%=ProductDM.getProductBasedOnID(finalList.get(1)).getImgRef()%>" 
							
							<%
							
						}else {
							%>
							alt="" src="../images/add-item.png
						<%	
					}
						
					} catch (Exception e) 
					{
						%>
							alt="" src="../images/add-item.png
						<%
					}
		
					%>" border="1" style="width: 90px; height: 95px;margin-left: 8px;" onclick="addToComparator(2)"/> 
		    <cross2>
		    <div class="delButton ui-add-icon-left" >
				<form action="deleteProduct" method="GET">
					<input type="hidden" name="productID" value="<%=id2%>"></input>					
					<input id ="delBtn2" style="width:25%;height:25%;" type="image" src="../images/trash.png" alt="Submit Form" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext" />
					
				</form>

			</div>
			</cross2>
		</div>
		
		
		

		<div class="ui-block-c">
			<img 
			<%try 
					{
						if (!empty && finalList.get(2)!=null) 
						{	
							id3=Integer.parseInt(ProductDM.getProductBasedOnID(finalList.get(2)).getProductID());
						%>
							  id="third_1" onclick="change('<%=ProductDM.getProductBasedOnID(finalList.get(2)).getImgRef()%>','#third_1','cross3','<%=ProductDM.getProductBasedOnID(finalList.get(2)).getProductName()%>','<%=ProductDM.getProductBasedOnID(finalList.get(2)).getPrice()%>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(2)).getProductID()).getShoppingMall1() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(2)).getProductID()).getShoppingMall2() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(2)).getProductID()).getShoppingMall3() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(2)).getProductID()).getStore1() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(2)).getProductID()).getStore2() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(2)).getProductID()).getStore3() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(2)).getProductID()).getStockLevel1() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(2)).getProductID()).getStockLevel2() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(2)).getProductID()).getStockLevel3() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(2)).getProductID()).getDist1() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(2)).getProductID()).getDist2() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(2)).getProductID()).getDist3() %>',
							 '<%=ProductDM.getProductBasedOnID(finalList.get(2)).getLikes()%>',
							 '<%=ProductDM.getProductBasedOnID(finalList.get(2)).getRatings()%>',
							 '<%=ProductDM.getProductBasedOnID(finalList.get(2)).getReviewList()[0]%>',
							 '<%=ProductDM.getProductBasedOnID(finalList.get(2)).getReviewList()[1]%>'
							 
							 )" alt="" src="<%=ProductDM.getProductBasedOnID(finalList.get(2)).getImgRef()%>" 
							
							<%
							
						}else {
							%>
							alt="" src="../images/add-item.png
						<%	
					}
						
					} catch (Exception e) 
					{
						%>
							alt="" src="../images/add-item.png
						<%
					}
		
					%>" border="1" style="width: 90px; height: 95px;margin-left: 8px;" onclick="addToComparator(3)"/> 
			<cross3>
			<div class="delButton ui-add-icon-left" >
				<form action="deleteProduct" method="GET">
					<input type="hidden" name="productID" value="<%=id3%>"></input>					
					<input id ="delBtn3" style="width:25%;height:25%;" type="image" src="../images/trash.png" alt="Submit Form" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext" />
					
				</form>

			</div>
			</cross3>
		</div>
	</div>
	<div class="ui-grid-b">
		<div class="ui-block-a">
			<img 
			<%try 
					{
						if (!empty && finalList.get(3)!=null) 
						{	
							id4=Integer.parseInt(ProductDM.getProductBasedOnID(finalList.get(3)).getProductID());
						%>
							 id="forth_1" onclick="change('<%=ProductDM.getProductBasedOnID(finalList.get(3)).getImgRef()%>','#forth_1','cross4','<%=ProductDM.getProductBasedOnID(finalList.get(3)).getProductName()%>','<%=ProductDM.getProductBasedOnID(finalList.get(3)).getPrice()%>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(3)).getProductID()).getShoppingMall1() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(3)).getProductID()).getShoppingMall2() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(3)).getProductID()).getShoppingMall3() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(3)).getProductID()).getStore1() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(3)).getProductID()).getStore2() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(3)).getProductID()).getStore3() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(3)).getProductID()).getStockLevel1() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(3)).getProductID()).getStockLevel2() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(3)).getProductID()).getStockLevel3() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(3)).getProductID()).getDist1() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(3)).getProductID()).getDist2() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(3)).getProductID()).getDist3() %>',
							 '<%=ProductDM.getProductBasedOnID(finalList.get(3)).getLikes()%>',
							 '<%=ProductDM.getProductBasedOnID(finalList.get(3)).getRatings()%>',
							 '<%=ProductDM.getProductBasedOnID(finalList.get(3)).getReviewList()[0]%>',
							 '<%=ProductDM.getProductBasedOnID(finalList.get(3)).getReviewList()[1]%>'
							 
							 )" alt="" src="<%=ProductDM.getProductBasedOnID(finalList.get(3)).getImgRef()%>" 
							
							<%
							
						}else {
							%>
							alt="" src="../images/add-item.png
						<%	
					}
						
					} catch (Exception e) 
					{
						%>
							alt="" src="../images/add-item.png
						<%
					}
		
					%>" border="1" style="width: 90px; height: 95px;margin-left: 8px;" onclick="addToComparator(4)"/> 
			<cross4>
			<div class="delButton ui-add-icon-left" >
				<form action="deleteProduct" method="GET">
					<input type="hidden" name="productID" value="<%=id4%>"></input>					
					<input id ="delBtn4" style="width:25%;height:25%;" type="image" src="../images/trash.png" alt="Submit Form" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext" />
					
				</form>

			</div>
			</cross4>
		</div>
		
		<div class="ui-block-b">
		<img 
			<%try 
					{
						if (!empty && finalList.get(4)!=null) 
						{	
							id5=Integer.parseInt(ProductDM.getProductBasedOnID(finalList.get(4)).getProductID());
						%>
							 id="fifth_1" onclick="change('<%=ProductDM.getProductBasedOnID(finalList.get(4)).getImgRef()%>','#fifth_1','cross5','<%=ProductDM.getProductBasedOnID(finalList.get(4)).getProductName()%>','<%=ProductDM.getProductBasedOnID(finalList.get(4)).getPrice()%>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(4)).getProductID()).getShoppingMall1() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(4)).getProductID()).getShoppingMall2() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(4)).getProductID()).getShoppingMall3() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(4)).getProductID()).getStore1() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(4)).getProductID()).getStore2() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(4)).getProductID()).getStore3() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(4)).getProductID()).getStockLevel1() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(4)).getProductID()).getStockLevel2() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(4)).getProductID()).getStockLevel3() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(4)).getProductID()).getDist1() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(4)).getProductID()).getDist2() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(4)).getProductID()).getDist3() %>',
							 '<%=ProductDM.getProductBasedOnID(finalList.get(4)).getLikes()%>',
							 '<%=ProductDM.getProductBasedOnID(finalList.get(4)).getRatings()%>',
							 '<%=ProductDM.getProductBasedOnID(finalList.get(4)).getReviewList()[0]%>',
							 '<%=ProductDM.getProductBasedOnID(finalList.get(4)).getReviewList()[1]%>'
							 
							 )" alt="" src="<%=ProductDM.getProductBasedOnID(finalList.get(4)).getImgRef()%>" 
							
							<%
							
						}else {
							%>
							alt="" src="../images/add-item.png
						<%	
					}
						
					} catch (Exception e) 
					{
						%>
							alt="" src="../images/add-item.png
						<%
					}
		
					%>" border="1" style="width: 90px; height: 95px;margin-left: 8px;" onclick="addToComparator(5)"/> 
			<cross5>
			<div class="delButton ui-add-icon-left" >
				<form action="deleteProduct" method="GET">
					<input type="hidden" name="productID" value="<%=id5%>"></input>					
					<input id ="delBtn5" style="width:25%;height:25%;" type="image" src="../images/trash.png" alt="Submit Form" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext" />
					
				</form>

			</div>
			</cross5>
		</div>
		
		<div class="ui-block-c">
			<img 
			<%try 
					{
						if (!empty && finalList.get(5)!=null) 
						{	
							id6=Integer.parseInt(ProductDM.getProductBasedOnID(finalList.get(5)).getProductID());
						%>
							id="sixth_1" onclick="change('<%=ProductDM.getProductBasedOnID(finalList.get(5)).getImgRef()%>','#sixth_1','cross6','<%=ProductDM.getProductBasedOnID(finalList.get(5)).getProductName()%>','<%=ProductDM.getProductBasedOnID(finalList.get(5)).getPrice()%>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(5)).getProductID()).getShoppingMall1() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(5)).getProductID()).getShoppingMall2() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(5)).getProductID()).getShoppingMall3() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(5)).getProductID()).getStore1() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(5)).getProductID()).getStore2() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(5)).getProductID()).getStore3() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(5)).getProductID()).getStockLevel1() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(5)).getProductID()).getStockLevel2() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(5)).getProductID()).getStockLevel3() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(5)).getProductID()).getDist1() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(5)).getProductID()).getDist2() %>',
							 '<%=ProductDM.getLocation(ProductDM.getProductBasedOnID(finalList.get(5)).getProductID()).getDist3() %>',
							 '<%=ProductDM.getProductBasedOnID(finalList.get(5)).getLikes()%>',
							 '<%=ProductDM.getProductBasedOnID(finalList.get(5)).getRatings()%>',
							 '<%=ProductDM.getProductBasedOnID(finalList.get(5)).getReviewList()[0]%>',
							 '<%=ProductDM.getProductBasedOnID(finalList.get(5)).getReviewList()[1]%>'
							 
							 )" alt="" src="<%=ProductDM.getProductBasedOnID(finalList.get(5)).getImgRef()%>" 
							
							<%
							
						}else {
							%>
							alt="" src="../images/add-item.png
						<%	
					}
						
					} catch (Exception e) 
					{
						%>
							alt="" src="../images/add-item.png
						<%
					}
		
					%>" border="1" style="width: 90px; height: 95px;margin-left: 8px;" onclick="addToComparator(6)"/>
			<cross6>
			<div class="delButton ui-add-icon-left" >
				<form action="deleteProduct" method="GET">
					<input type="hidden" name="productID" value="<%=id6%>"></input>					
					<input id ="delBtn6" style="width:25%;height:25%;" type="image" src="../images/trash.png" alt="Submit Form" class="ui-btn ui-shadow ui-corner-all ui-icon-plus ui-btn-icon-notext" />
					
				</form>

			</div>
			</cross6>
		</div>
	</div>	


</h2>
</h6>	

   


<h3>
		<!--Show List Button-->
		<button id ="first" type="button" data-mini="true" onclick="showItems()" style="top:0px;width:95%;margin-left:auto;margin-right:auto;">Show List</button> 

		<!-- Criteria buttons -->
		
  	 	<div style="font-size: 22pt;position:absolute;top:300px;left:110px">
  	 	<select name="a" id="a" data-role="slider"  data-mini="true" >
		<option value="off">Price</option>
		<option value="on" selected>Price</option>
		</select> 
  	 	</div>
  	 	
  	 
  		
  		
  		<div style="position:absolute;top:340px;left:110px">
  	 	<select name="b" id="b" data-role="slider" data-mini="true">
		<option value="off">Location</option>
		<option value="on">Location</option>
		</select> 
  		
  	 	
  	 	</div>
  		
  		
  		<div style="position:absolute;top:380px;left:110px">
  	 	<select name="c" id="c" data-role="slider" data-mini="true">
		<option value="off">Stock</option>
		<option value="on" >Stock</option>
		</select> 
  		
  	 	
  	 	</div>
  		
  		
  		<div style="position:absolute;top:420px;left:110px">
  	 	<select name="d" id="d" data-role="slider" data-mini="true">
		<option value="off">Likes</option>
		<option value="on" >Likes</option>
		</select> 
  		
  	 	
  	 	</div>
  		
  		
  		<div style="position:absolute;top:460px;left:110px;">
  	 	<select name="e" id="e" data-role="slider" data-mini="true">
		<option value="off">Ratings</option>
		<option value="on" >Ratings</option>
		</select> 
  		
  	 	
  	 	</div>
  		
  		<br><br>
  		
    
    <!--Details of Comparison 1-->
     	
     <table width="130" style="position:absolute;top:293px;left:-7px">
<tr>
  <td><div id="camprice"></div></td>
 
</tr>
</table> 

 <div style="width:27%; height:10%;position:absolute;top:336px;left:15px">
			<select name="loc" id="loc" onchange="locChange()" data-mini="true">
						<optgroup id="l1" label="">
							<option id="p1" value="1" selected>near</option>
						</optgroup>
						<optgroup id="l2" label="">
							<option id="p2" value="2"></option>
						</optgroup>
						<optgroup id="l3" label="">
							<option id="p3" value="3"></option>
						</optgroup>
					</select>
								
		</div>	  		

 <table width="130" style="position:absolute;top:373px;left:-7px">
<tr>
  <td>
  
  				<h10>
					<div id="s1"></div>
				</h10>
				
				<h20>
				<h11>
					<div id="s2"></div>
				</h11>
				
				<h12>
					<div id="s3"></div>
				</h12>
				<h20>

  </td>
 
</tr>
<tr>
  <td><div id="liking1"></div></td>
</tr>
<tr>



	
  <td><a href="#myPopup" data-rel="popup" class="ui-btn ui-btn-inline ui-corner-all" style="background-color: rgba(10, 0, 0, 0);border: none; box-shadow: none;top:-15px;"><img alt="" id="ratings" src= "" style="width: 70px; height: 18px" /></a></td>
 
</tr> 

</table> 

 <!--Details of Comparison 2-->
 <table width="130" style="position:absolute;top:293px;left:200px">
<tr>
  <td><div id="camprice1"></div></td>
 
</tr>
</table> 
      
      
      
      
      
      <div style="width:27%; height:10%;position:absolute;top:336px;left:220px">
      
  
      <select name="loc2" id="loc2" onchange="locChange2()" data-mini="true">
						<optgroup id="ll1"  label="">
							<option id="pp1" value="1" selected>near</option>
						</optgroup>
						<optgroup id="ll2" label="">
							<option id="pp2" value="2"></option>
						</optgroup>
						<optgroup id="ll3" label="">	
							<option id="pp3" value="3"></option>
						</optgroup>
					</select>
			
								
		</div>	  
      
      
      
      
      
      
      
      
      
      <table width="130" style="position:absolute;top:373px;left:199px">
<tr>
  <td>
  
  				<h30>
				<div id="ss1"></div>
				</h30>
				
				<h40>
				<h31>
					<div id="ss2"></div>
				</h31>
				
				<h32>
					<div id="ss3"></div>
				</h32>
				<h40>
  
  
  
  
  
  
  
  </td>
 
</tr>
<tr>
  <td><div id="liking2"></div></td>
</tr>
<tr>
  <td><a href="#myPopup1" data-rel="popup" class="ui-btn ui-btn-inline ui-corner-all" style="background-color: rgba(10, 0, 0, 0);border: none; box-shadow: none;top:-15px;"><img alt="" id="ratings1" src= "" style="width: 70px; height: 18px" /></a></td>
 
</tr>

</table> 
     
     
</h3>
<div style="margin-bottom:30px;background:white;">

</div>

<div data-role="popup" id="myPopup">
  
</div>

<div data-role="popup" id="myPopup1">
 
</div>

</body>
</html>