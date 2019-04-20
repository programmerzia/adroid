<?php
include 'includes/dbc.php';
session_start();
$id = $_SESSION['user_id'];
$login_id = $_SESSION['login_id'];
if (mysqli_query($dbcon,"UPDATE login_history SET logout=NOW() WHERE userid='$id' AND id='$login_id'")) {
	logout();
}else{
	echo mysqli_error($dbcon);
}

?>