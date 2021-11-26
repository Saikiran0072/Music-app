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
$sql = "SELECT playlistsongs.SongId,playlistsongs.PlaylistId,album.AlbumId,artist.followers, album.likes,album.ArtistId,song.songname,names.name from playlistsongs inner join song on playlistsongs.SongId = song.SongId inner join album on album.AlbumId = song.AlbumId inner join names on names.ArtistId = album.ArtistId inner join artist on names.ArtistId = artist.ArtistId;";

	//creating an statment with the query
$stmt = $conn->prepare($sql);
 
//executing that statment
$stmt->execute();
 
//binding results for that statment 
$stmt->bind_result($SongId,$PlaylistId,$AlbumId,$followers,$likes,$ArtistId,$songname,$name);
 
 
//looping through all the records
while($stmt->fetch()){
 
 //pushing fetched data in an array 
 $temp = [
 'SongId'=>$SongId,
 'PlaylistId'=>$PlaylistId,
 'AlbumId'=>$AlbumId,
 'followers'=>$followers,
 'likes'=>$likes,
 'ArtistId'=>$ArtistId,
 'songname'=>$songname,
 'name'=>$name,
 ];
 
 //pushing the array inside the hero array 
 array_push($data, $temp);

 
}

//displaying the data in json format 
echo json_encode($data);
