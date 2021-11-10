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
 
// Getting name from $obj object.
$FullName = $obj['FullName'] ?? "";
 
// Getting Email from $obj object.
$Email = $obj['Email'] ?? "";

// Getting likes from $obj object.
$Password = $obj['Password'] ?? "";

// Getting likes from $obj object.
$Confirmpswd = $obj['Confirmpswd'] ?? "";
 
$sql = "SELECT * FROM auth WHERE FullName = ('$FullName') AND Password =('$Password')";

$result = mysqli_query($con,$sql);
$count = mysqli_num_rows($result);
if($count == 1){
	echo json_encode("Error");
}
else{
	$insert ="INSERT INTO auth(FullName,Email,Password,Confirmpswd)VALUES(('$FullName'),('$Email'),('$Password'),('$Confirmpswd'))";
	$query = mysqli_query($con,$insert);
	if($query){
		echo json_encode("Success");
	}
}

	 
 mysqli_close($con);
?>
