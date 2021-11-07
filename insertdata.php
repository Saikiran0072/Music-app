<?php 
	include "test-connect.php";
	// REGISTER USER
	echo 'H E L L O';
	echo 'gfgchvhyvhccgcgcgjcgcg';

	  
	    $Artist_id = mysqli_real_escape_string($connect, $_POST['Artist_id'] ?? "");
	    $followers = mysqli_real_escape_string($connect, $_POST['followers'] ?? "");
	   
	  
	 
	        $query = "INSERT INTO artist (Artist_id, followers)
	  			  VALUES('$Artist_id', '$followers')";
	    $results = mysqli_query($connect, $query);
	    if($results>0)
	    {
		echo "user added successfully"; }
			?>
			
