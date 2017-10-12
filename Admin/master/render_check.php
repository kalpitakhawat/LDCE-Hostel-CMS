<?php
session_start();
  if (!isset($_SESSION['username']) ||  !isset($_SESSION['passkey']) ) {
      header('location:./login.php');
  } else if( $_SESSION['username'] != "constellation" || $_SESSION['passkey'] != md5($_SESSION['username']) )  {
      header('location:./login.php');
  }
 ?>
