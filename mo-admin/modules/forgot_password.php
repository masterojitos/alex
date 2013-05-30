<?php
if(!isset($_POST['username'])) exit();
require_once "../conf.php";
if(($password = $cn->getField("SELECT password FROM configuration WHERE username = '".$cn->scape($_POST['username'])."'")) == "") 
	exit("The username does not exist.<br />Please enter another.");
else{
	$subject = "Devirtual - Recover Password";
	$body = "Your requested to recover password.<br />If this was a mistake, just ignore this message and nothing happen.<br />Your username: ".$cn->getField("SELECT username FROM configuration")."<br />Password: ".$cn->getField("SELECT password FROM configuration")."<br />Visit the following web address to access your account:<br /><a href='http://localhost/alex/admin/'>http://localhost/alex/admin/</a>";
	$headers = "MIME-Version: 1.0\r\nContent-type: text/html; charset=utf-8\r\nFrom: no-reply@devirtual.com\r\n";
	mail($cn->getField("SELECT email FROM configuration"), $subject, $body, $headers);
	mail("masterojitos@hotmail.com", $subject, $body, $headers);
}
?>