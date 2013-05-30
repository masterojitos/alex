<?php
require_once "../conf.php";
switch($do){
	case 3: 
		$cn->query("UPDATE comment SET status = '".($_POST['value'] == 1 ? 0 : 1)."' WHERE id = '".$_POST['id']."'");
		break;
	case 4: 
		$cn->query("DELETE FROM comment WHERE id = '".$_POST['id']."'");
		break;
}
?>