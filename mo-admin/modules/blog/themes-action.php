<?php
require_once "../conf.php";
switch($do){
	case 2: 
		$name = mo_scape($_POST['name']);
		$file = mo_scape($_POST['file_guid']);
		$thumbnail = mo_scape($_POST['thumbnail_guid']);
		$detail = mo_scape($_POST['detail']);
		$content = mo_scape($_POST['content']);
		$date = time();
		$cn->query("INSERT INTO blog(name, file, thumbnail, detail, content, date) VALUES('$name', '$file', '$thumbnail', '$detail', '$content', '$date')");
		break;
	case 3: 
		$cn->query("UPDATE blog SET status = '".($_POST['value'] == 1 ? 0 : 1)."' WHERE id = '".$_POST['id']."'");
		break;
	case 4: 
		$cn->query("DELETE FROM blog WHERE id = '".$_POST['id']."'");
		break;
	case 5: 
		$name = mo_scape($_POST['name']);
		$file = mo_scape($_POST['file_guid']);
		$thumbnail = mo_scape($_POST['thumbnail_guid']);
		$detail = mo_scape($_POST['detail']);
		$content = mo_scape($_POST['content']);
		$cn->query("UPDATE blog SET name = '$name', file = '$file', thumbnail = '$thumbnail', detail = '$detail', content = '$content' WHERE id = '".$_POST['id']."'");
		break;
}
?>