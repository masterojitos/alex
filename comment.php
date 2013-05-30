<?php
require_once "conf.php";
$nickname = mo_scape($_POST['nickname']);
$email = mo_scape($_POST['email']);
$content = mo_scape($_POST['comment']);
$date = time();
$cn->query("INSERT INTO comment(blog_id, nickname, email, content, date) VALUES('".$_POST['id']."', '$nickname', '$email', '$content', '$date')");
?>