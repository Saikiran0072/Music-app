<?php
echo "HELLO";
 
//Define your Server host name here.
$HostName = "localhost";
 
//Define your MySQL Database Name here.
$DatabaseName = "artist info";
 
//Define your Database User Name here.
$HostUser = "root";
 
//Define your Database Password here.
$HostPass = ""; 
 
// Creating MySQL Connection.
$con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);
 
// Storing the received JSON into $json variable.
$json = file_get_contents('php://input');
 
// Decode the received JSON and Store into $obj variable.
$obj = json_decode($json,true);
 
// Getting name from $obj object.
$Artist_id = $obj['Artist_id'] ?? "";
 
// Getting Email from $obj object.
$followers = $obj['followers'] ?? "";
 
// Creating SQL query and insert the record into MySQL database table.
$Sql_Query = "update artist set followers = ('$followers') where Artist_id=1";
	 
if(mysqli_query($con,$Sql_Query)){
	 
	// If the record inserted successfully then show the message.
	$MSG = 'User Registered Successfully' ;
		 
	// Converting the message into JSON format.
	$json = json_encode($MSG);
		 
	// Echo the message.
	echo $json ;
	 
	 }
else{
	 
	echo 'Try Again';
	 
	}

 mysqli_close($con);
?>
