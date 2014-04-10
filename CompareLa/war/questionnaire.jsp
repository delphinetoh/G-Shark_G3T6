<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>Questionnaire</title>
    <style type="text/css">
        body { font-family:Lucida Sans, Arial, Helvetica, Sans-Serif; font-size:13px; margin:20px;}
        #main { width:960px; margin: 0px auto; border:solid 1px #b2b3b5; -moz-border-radius:10px; padding:20px; background-color:#f6f6f6;}
        #header { text-align:center; border-bottom:solid 1px #b2b3b5; margin: 0 0 20px 0; }
        fieldset { border:none; width:320px;}
        legend { font-size:18px; margin:0px; padding:10px 0px; color:#b0232a; font-weight:bold;}
        label { display:block; margin:15px 0 5px;}
        input[type=text], input[type=password] { width:300px; padding:5px; border:solid 1px #000;}
        .prev, .next { background-color:#b0232a; padding:5px 10px; color:#fff; text-decoration:none;}
        .prev:hover, .next:hover { background-color:#000; text-decoration:none;}
        .prev { float:left;}
        .next { float:right;}
        #steps { list-style:none; width:100%; overflow:hidden; margin:0px; padding:0px;}
        #steps li {font-size:24px; float:left; padding:10px; color:#b0b1b3;}
        #steps li span {font-size:11px; display:block;}
        #steps li.current { color:#000;}
        #makeWizard { background-color:#b0232a; color:#fff; padding:5px 10px; text-decoration:none; font-size:18px;}
        #makeWizard:hover { background-color:#000;}
    </style>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.min.js"></script>
    <script type="text/javascript" src="../javascript/formToWizard.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#SignupForm").formToWizard({ submitButton: 'SaveAccount' })
        });
    </script>
</head>
<body onload="MakeWizard()">
    <div id="main">
        <div id="header">
            <h1>You're almost done. Just some final comments from you please! :)</h1>
        </div>
        <form id="SignupForm" action="processQuestionnaire">
        <fieldset>
            <legend>Preferred Layout</legend>
            
            <label for="q1">Which layout do you prefer for the Compare page?</label>
            <input type="radio" name="q1" value="layout-button" checked/>Layout 1</input>
			<input type="radio" name="q1" value="layout-flip">Layout 2</input>
			<br/><br/>
			<table>
				<tr><th>Layout 1</th><th>Layout 2</th></tr>
				<tr>
					<td><img src="../images/comparebuttonscreenshot.png" height="410px" width="250px"></img></td>
					<td><img src="../images/compareflipscreenshot.png" height="410px" width="250px"></img></td>
				</tr>
			</table>
            <label for="q2">What do you like about your preferred layout?</label>
            <textarea name="q2" rows="5" cols="40"></textarea>
			
			<label for="q3">What improvements do you think can be made to your preferred layout?</label>
            <textarea name="q3" rows="5" cols="40"></textarea>
        </fieldset>
        <fieldset>
            <legend>Rejected Layout</legend>
            <label for="q4">What do you dislike about your rejected layout?</label>
            <textarea name="q4" rows="5" cols="40"></textarea>
			
			<label for="q5">What improvements do you think can be made to your rejected layout?</label>
            <textarea name="q5" rows="5" cols="40"></textarea>
        </fieldset>
        <fieldset>
           <legend>Final Words</legend>
            <label for="q6">Any last comments with regards to the rest of the CompareLa! application?</label>
            <textarea name="q6" rows="5" cols="40"></textarea>
        </fieldset>
        <p>
            <input id="SaveAccount" type="submit" value="Submit Questionnaire" />
        </p>
        </form>
    </div>
</body>
</html>
