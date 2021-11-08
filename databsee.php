<?php
echo "hello";
//Connecting to database
 
$conn = mysqli_connect('localhost','root','','artist info');
 
if(!$conn)
{
    die(mysqli_error());
}
 
//read text file and insert data into database
 

$open = fopen('data.txt','r');
 
while (!feof($open)) 
{
 $getTextLine = fgets($open);
 $explodeLine = explode(",",$getTextLine);
 
 list($Artist_id,$followers) = $explodeLine ?? "";
 
 $qry = "insert into artist (`Artist_id`,`followers`) values('".$Artist_id."','".$followers."')";
 
 mysqli_query($conn,$qry);
}
 
fclose($open);
 
 
?>
