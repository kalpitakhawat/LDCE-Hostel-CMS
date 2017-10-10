<?php
	$con = mysqli_connect("localhost","root","","hostel");
	if(isset($_POST['query'])){
		$string=$_POST['query'];
		if($con) {

			$sql = "UPDATE student SET ". $string;
			$out = array();
			if (mysqli_query($con, $sql)) {
			    array_push($out, 'success');
			} else {
			    array_push($out, 'error');
			    array_push($out, mysqli_error($con));
			}

			echo json_encode($out);
		}else {

			mysqli_error();
		}
	}

 ?>
