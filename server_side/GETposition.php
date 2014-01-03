<?php
	require 'connection.php';
	$query=mysql_query("SELECT * FROM gps_location");
	$row=mysql_num_rows($query);
	for($i=0;$i<$row;$i++) {
		$row_mas=mysql_fetch_array($query);
		$object[$i]=array('id' => $row_mas['location_id'], 'time' => $row_mas['time'], 'latitude' => $row_mas['latitude'], 'longitude' => $row_mas['longitude'], 'altitude' => $row_mas['altitude']);
	}
	echo json_encode($object);
?>