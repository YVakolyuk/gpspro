<?php
	require 'connection.php';
	$latitude=$_POST["lat"];
	$longitude=$_POST["lng"];
	$trace_id=$_POST["trace"];
	if(mysql_query("INSERT INTO `markers`(`id_marker`, `id_trace`, `latitude`, `longitude`, `timestamp`) 
												VALUES (NULL,$trace_id,$latitude,$longitude,NULL)")){
		echo "database updated";
	}
?>