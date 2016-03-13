<?php
	
	if(isset($_GET["album_type"])) {
		echo get_album($_GET["album_type"]);
	} else {
		exit();
	}
	
	
	function get_album($type) {
		$album = "";
		
		switch($type) {
			case "MIN": $order_by_type = "ASC"; break;
			case "MAX": $order_by_type = "DESC"; break;
			default:
				exit(); break;
		}
		$conn = new mysqli("localhost", "root", "", "musicsdb");
		
		if (!$conn->connect_error) {
			$query = "SELECT  `album`.`name` AS `album_name`, SUM(  `track`.`duration` ) AS  `album_duration` 
								FROM  `album` 
								INNER JOIN  `track` ON  `album`.`id` =  `track`.`album_id` 
								GROUP BY  `album`.`id` 
								ORDER BY  `album_duration` $order_by_type
								LIMIT 1";
			
			
			if ($result = $conn->query($query)) {

				while ($row = $result->fetch_assoc()) {
					$album = $row['album_name'].': '.gmdate('H:i:s', $row['album_duration']);
				}
				$result->close();
			}
		
			$conn->close();
		}
		
		return $album;
	}