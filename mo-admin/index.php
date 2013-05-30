<?php
require_once "../conf.php";
session_start();
include isset($_SESSION['masoji']) ? "control_panel.php" : "login.php";
?>