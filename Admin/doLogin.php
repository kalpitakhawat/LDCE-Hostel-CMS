<?php
  session_start();
if (isset($_POST['username']) && isset($_POST['password']) && !empty($_POST['username']) && !empty($_POST['password']) ) {
$uname='constellation';
    $pass='002d8aba71c688f1c030566104b80d8a';
    // die(md5($_POST['password']) == $pass);
    // die($uname == $_POST['username']);
    if ($uname == $_POST['username'] && md5($_POST['password']) == $pass ){
      $_SESSION['username'] = $uname;
      $_SESSION['passkey'] = md5($uname);
      header('location:./');
    }else{
      $_SESSION['error'] = "Username - password pair is invalid. We're tracking you!: <br>";
      $_SESSION['error'].= 'IP # '.$_SERVER['REMOTE_ADDR']."<br />";
      header('location:./login.php');
    }
  } else {
    $_SESSION['error'] = "Username - password pair is invalid. We're tracking you!: <br>";
    $_SESSION['error'].= 'IP # '.$_SERVER['REMOTE_ADDR']."<br />";
    header('location:./login.php');
  }

 ?>
