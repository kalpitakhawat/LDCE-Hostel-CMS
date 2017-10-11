<?php
  $out=array();
	require 'connect.inc.php';
	if(isset($_GET['id'])){
		$string=$_GET['id'];
		if($con) {

			$sql = "select * from student where id = ".$string.";";
			$result = mysqli_query($con,$sql);
			while($row = $result->fetch_assoc()){
				array_push($out, $row);
			}
      $out=$out[0];
		}else {

			die(mysqli_error());
		}
	}else{
    header("Location: ./");
  }

 ?>
