<?php
	require 'connect.inc.php';
	if(isset($_POST['query'])){
		$q=$_POST['query'];
    $values='';
    $columns='';
		if($con) {

      foreach ($q as $key => $value) {
        $columns=$columns . $key . ',';
        $values= $values . "'" . $value . "',";
      }
      $columns = rtrim($columns,',');
      $values = rtrim($values,',');
			$sql = "INSERT INTO student (".$columns.") VALUES(".$values.")";

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
