<?php

//Define your Server host name here.
$HostName = "localhost";
 
//Define your MySQL Database Name here.
$DatabaseName = "musicdb";
 
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
 
$data=array();
 
// Getting name from $obj object.
$playlistname = $obj['playlistname'] ?? "";
 
$sql = "SELECT PlaylistId, playlistname FROM playlist WHERE playlistname= ('$playlistname')";

$result = mysqli_query($con,$sql);
$count = mysqli_num_rows($result);
if($count){
	echo json_encode("Error");
}
else{
	$insert ="INSERT INTO playlist(playlistname)VALUES(('$playlistname'))";
	$query = mysqli_query($con,$insert);
	if($query){
		echo json_encode("Success");
	}
}
	 
 mysqli_close($con);
?>
