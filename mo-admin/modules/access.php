<?php
if(!isset($_POST['username']) and !isset($_POST['password'])) exit();
require_once "../conf.php";
if(($password = $cn->getField("SELECT password FROM configuration WHERE username = '".$cn->scape($_POST['username'])."'")) == "") 
	exit("The username does not exist.<br />Please enter another.");
elseif($password != $cn->scape($_POST['password'])) 
	exit("The password for the username <strong>".$cn->scape($_POST['username'])."</strong> is incorrect. <a href='#' class='forgot_password'>Forgot Password ?</a>");
else{
	session_start();
	$_SESSION['masoji'] = true;
}
?>