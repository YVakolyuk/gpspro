<?php
	require 'connection.php';
		if(mysql_query("INSERT INTO `gpspro`.`traces`(`id_trace`, `timestamp`) 
					VALUES (NULL,NULL)")){
			echo mysql_insert_id();
		}
?>