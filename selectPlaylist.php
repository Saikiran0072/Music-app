<?php

$servername = "localhost";
$username = "root";
$password = "";
$database = "musicdb";
 

$conn = new mysqli($servername, $username, $password, $database);
 
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
 
$data = array(); 
 
//this is our sql query 
$sql = "SELECT PlaylistId,playlistname FROM playlist;";
 
//creating an statment with the query
$stmt = $conn->prepare($sql);
 
//executing that statment
$stmt->execute();
 
//binding results for that statment 
$stmt->bind_result($PlaylistId, $playlistname);
 
//looping through all the records
while($stmt->fetch()){
 
 //pushing fetched data in an array 
 $temp = [
 'PlaylistId'=>$PlaylistId,
 'playlistname'=>$playlistname,
 ];
 
 //pushing the array inside the hero array 
 array_push($data, $temp);
}
 
//displaying the data in json format 
echo json_encode($data);
