<?php

$servername = "localhost";
$username = "satvika";
$password = "abcd";
$database = "musicdb";
 
  
$conn = new mysqli($servername, $username, $password, $database);
 
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
 
//if everything is fine
 
//creating an array for storing the data 
$albumdata = array(); 
 
//this is our sql query 
$sql = "SELECT AlbumId, ArtistId, likes, albumname,release_yr FROM album;";
 
//creating an statment with the query
$stmt = $conn->prepare($sql);
 
//executing that statment
$stmt->execute();
 
//binding results for that statment 
$stmt->bind_result($AlbumId, $ArtistId,$likes,$albumname,$release_yr);
 
//looping through all the records
while($stmt->fetch()){
 
 //pushing fetched data in an array 
 $temp = [
 'AlbumIdid'=>$AlbumId,
 'ArtistId'=>$ArtistId,
 'likes'=>$likes,
 'albumname'=>$albumname,
 'release_yr'=>$release_yr
 ];
 
 //pushing the array inside the hero array 
 array_push($albumdata, $temp);
}
 
//displaying the data in json format 
echo json_encode($albumdata);
?>
