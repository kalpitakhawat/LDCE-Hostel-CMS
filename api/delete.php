<?php
	$con = mysqli_connect("localhost","root","","hostel");
	if(isset($_POST['id'])){
		$string=$_POST['id'];
		if($con) {

			$sql = "DELETE FROM student where id = " . $string. ";";
			$out = array();
			if (mysqli_query($con, $sql)) {
			    array_push($out, 'success');
			} else {
			    array_push($out, 'error');
			    array_push($out, mysqli_error($con));
			}
			header('Content-type:application/json');
			echo json_encode($out);
		}else {

			mysqli_error();
		}
	}

 ?>
