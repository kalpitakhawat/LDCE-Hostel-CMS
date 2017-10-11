<?php
	require 'connect.inc.php';
	if(isset($_POST['query'])){
		$string=$_POST['query'];
		if($con) {

			$out=array();
			$sql = "select * from student where ".$string.";";
			$result = mysqli_query($con,$sql);
			while($row = $result->fetch_assoc()){
				array_push($out, $row);
			}
			header('Content-type:application/json');
			echo json_encode($out);

		}else {

			mysqli_error();
		}
	}

 ?>
