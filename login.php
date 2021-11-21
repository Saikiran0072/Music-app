<?php
 
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
 
// Getting Email from $obj object.
$Email = $obj['Email'] ?? "";

// Getting likes from $obj object.
$Password = $obj['Password'] ?? "";

$sql = "SELECT * FROM auth WHERE Email = ('$Email') AND Password =('$Password')";

$result = mysqli_query($con,$sql);
$count1 = mysqli_num_rows($result);
if(!$count1){
	echo json_encode("Error try");
}
else{
	$sql_query = "SELECT * FROM login WHERE Email = ('$Email') AND Password = ('$Password')";
	$check = mysqli_query($con, $sql_query);
	$count2 = mysqli_num_rows($check);
	if($count2){
		echo json_encode("Logged");
	}
	else{
		$insert ="INSERT INTO login(Email,Password)VALUES(('$Email'),('$Password'))";
		$query = mysqli_query($con,$insert);
		if($query){
			echo json_encode("Logged");
			
		}	
	}
	
}

	 
 mysqli_close($con);
?>
