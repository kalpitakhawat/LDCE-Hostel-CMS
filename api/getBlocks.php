<?php
	require 'connect.inc.php';
		if($con) {

			$out=array();
			$sql = "select distinct block_no from student;";
			$result = mysqli_query($con,$sql);
			while($row = $result->fetch_assoc()){
				array_push($out, $row['block_no']);
			}
			header('Content-type:application/json');
			echo json_encode($out);

		}else {

			mysqli_error();
		}

 ?>
