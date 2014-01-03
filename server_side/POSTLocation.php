<?php
	require 'connection.php';
	$latitude=$_POST["lat"];
	$longitude=$_POST["lng"];
	$altitude=$_POST["alt"];
	if($latitude!='' && $longitude!=''){
		if(mysql_query("INSERT INTO `gpspro`.`gps_location`(`location_id`, `time`, `latitude`, `longitude`, `altitude`) 
					VALUES (NULL,NULL,$latitude,$longitude,$altitude)")){
			echo "database updated";
		}
	}
?>