<?php
echo "HELLO";
 
//Define your Server host name here.
$HostName = "localhost";
 
//Define your MySQL Database Name here.
$DatabaseName = "musicdb";
 
//Define your Database User Name here.
$HostUser = "satvika";
 
//Define your Database Password here.
$HostPass = "abcd"; 
 
// Creating MySQL Connection.
$con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);
 
// Storing the received JSON into $json variable.
$json = file_get_contents('php://input');
 
// Decode the received JSON and Store into $obj variable.
$obj = json_decode($json,true);

$Email = $obj['Email'] ?? "";
 
// Getting name from $obj object.
$FullName = $obj['FullName'] ?? "";
 
// Creating SQL query and insert the record into MySQL database table.
$Sql_Query = "update auth set FullName = ('$FullName') where Email = ('$Email')";
	 
if(mysqli_query($con,$Sql_Query)){
	 
	// If the record inserted successfully then show the message.
	$MSG = 'Data updated Successfully' ;
		 
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
