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
 
// Getting name from $obj object.
$ArtistId = $obj['ArtistId'] ?? "";

// Creating SQL query and insert the record into MySQL database table.
$sql = "SELECT AlbumId,ArtistId,Likes,Albumname, Release_yr FROM album WHERE ArtistId = ('$ArtistId');";
$result = mysqli_query($con,$sql);
$count = mysqli_num_rows($result);
if(!$count){
	echo json_encode("Error");
}
else{
	
$data = array(); 
 
//creating an statment with the query
$stmt = $con->prepare($sql);
 
//executing that statment
$stmt->execute();
 
//binding results for that statment 
$stmt->bind_result($AlbumId,$ArtistId,$Likes,$Albumname, $Release_yr);
 
//looping through all the records
while($stmt->fetch()){
 
 //pushing fetched data in an array 
 $temp = [
 'AlbumId'=>$AlbumId,
 'ArtistId'=>$ArtistId,
 'Likes'=>$Likes,
 'Albumname'=>$Albumname,
 'Release_yr'=>$Release_yr
 
 
 ];
 
 //pushing the array inside the hero array 
 array_push($data, $temp);
}
 
//displaying the data in json format 
echo json_encode($data);

	}

 mysqli_close($con);
?>
