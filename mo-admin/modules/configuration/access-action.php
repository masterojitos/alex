<?php
require_once "../conf.php";
$cn->query("UPDATE configuration SET username = '".mo_scape($_POST['user'])."', password = '".mo_scape($_POST['password'])."'");
?>