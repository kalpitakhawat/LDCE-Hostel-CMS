<?php
require 'connect.inc.php';
	if($con) {
		$out=array();
		$sql = "SHOW COLUMNS FROM `student`";
		$result = mysqli_query($con,$sql);
		while($row = mysqli_fetch_array($result)){
			 array_push($out, $row['Field']);
		}
		$out=array_diff($out,['photo']);
		echo json_encode($out);

	}else {

		mysqli_error();
	}

 ?>
