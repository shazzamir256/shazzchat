<!DOCTYPE html>
<?php

include('db.php');

?>
<html>
<head>
<title>
Chat System in PHP
</title>

<link rel="stylesheet" href="style.css" media="all"/>

<script>

function ajax(){
	
	var req = new XMLHttpRequest();                                 /* Creating Ajax object ,we can call any page in http or xml,saving it in variable so we can call it again and again*/
	
	req.onreadystatechange = function()  {                                /* "." is used to access next parameter*/
	
    if(req.readyState == 4 && req.status == 200){                     /* if request == 4 means ,it should be ready in 4 steps, status ==200 means it should be ready*/
		
	document.getElementById('chat').innerHTML = req.responseText;     /* change id of chat and display this content,"."innerHTML is used to display */
		
	
	}
	}
	
	req.open('GET','chat.php',true);                                 /* chat.php page would be displayed there dynamically with ajax without page refresh*/
	req.send();
	
	}

	setInterval(function() { ajax()} , 1000);                      /* 1000 ms means 1second, refresh page in 1 second*/

</script>
</head>
<body onload="ajax();">                                            <!-- calling ajax function on page load-->
<div id="container">

<div id="chat_box">

<div id = "chat">

</div>

</div>

<form action="index.php" method="post">

<input type="text" name="name" placeholder="Enter Your Name"/>

<textarea name="msg" placeholder="Enter Your Message"></textarea>

<input type="submit" name="submit" value="Send it"/>

</form>

<?php

if(isset($_POST['submit'])){
	
	$name = $_POST['name'];
	
	$msg = $_POST['msg'];
	
	 $insert = "INSERT INTO chat (name,msg) VALUES('$name','$msg')";
	
	 $run    = $db ->query($insert);
	 
	 if($run) {
		 
	   echo "<embed loop='false' src='chat.mp3' hidden='true' autoplay='true'>";          /* loop false means dont repeat, hidden true means dont  
		 
		                                                                                    show sound icon */
	 }
	 
	 
}

?>

</div>
</body>
</html>