<?php
require_once "conf.php";
if(!isset($_GET['theme'])) exit();
$id = strpos($_GET['theme'], '-') !== false ? mo_strstr2($_GET['theme'], '-') : $_GET['theme'];
$theme = tbl_blog("theme-detail", $id);
if(empty($theme)) exit();
$friendly = mo_friendly($theme['name']);
if(strstr($_GET['theme'], '-') != "-$friendly") header("Location: blog.php?theme=$id-$friendly");
$comments = tbl_comment($id);
$comments_count = count($comments);
$comments_title = "$comments_count COMMENT".($comments_count != 1 ? "S" : "");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es-es">
	<head>
		<title>Devirtual - <?php echo mo_unscape($theme['name']); ?></title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<meta name="Title" content="Devirtual - <?php echo mo_unscape($theme['name']); ?>" />
		<meta name="Description" content="<?php echo strip_tags($theme['detail']); ?>" />
		<meta name="Keywords" content="Devirtual" />
		<link href="css/reset.css" rel="stylesheet" type="text/css" />
		<link href="css/layout.css" rel="stylesheet" type="text/css" />
		<link href="css/text.css" rel="stylesheet" type="text/css" />
		<link href="lib/MOStyles/MOStyles.css" rel="stylesheet" type="text/css" />
		<link href="img/favicon.ico" rel="shortcut icon" />
		<script src="js/jquery.js" type="text/javascript"></script>
		<script src="lib/flowplayer/flowplayer-3.2.6.min.js" type="text/javascript"></script>
		<script src="js/scripts.js" type="text/javascript"></script>
	</head>
	<body>
		<div id="blog" class="MOForm">
			<h3><?php echo mo_parseTime($theme['date']); ?><span class="right"><?php echo $comments_title; ?></span></h3>
			<div class="theme-detail">
				<h2><?php echo mo_unscape($theme['name']); ?></h2>
				<?php echo $theme['detail']; ?>
				<div class="file">
					<?php if(end(explode(".", $theme['file'])) != "flv"){ ?>
					<img src="userfiles/<?php echo mo_unscape($theme['file']); ?>" alt="" />
					<?php }else{ ?>
					<a href="userfiles/<?php echo mo_unscape($theme['file']); ?>" id="player"></a>
					<?php } ?>
				</div>
				<?php echo $theme['content']; ?>
			</div>
			<input type="button" value="Post Your Comment" id="post-your-comment" />
			<?php foreach($comments as $k => $v){ ?>
			<div class="comment">
				<div class="author"><strong><?php echo mo_unscape($v['nickname']); ?></strong> Say:</div>
				<p><?php echo nl2br(mo_unscape($v['content'])); ?></p>
				<div class="date">Posted on <?php echo mo_parseTime($v['date']); ?></div>
			</div>
			<?php } ?>
			<?php if($comments_count){ ?><div class="space"></div><?php } ?>
			<div class="clear"></div>
			<form>
				<h4>Post Your Comment</h4>
				<p><label for="nickname">Nickname: </label><input type="text" name="nickname" id="nickname" /></p>
				<p><label for="email">Email: </label><input type="text" name="email" id="email" /></p>
				<p><label for="comment">Comment: </label><textarea name="comment" id="comment"></textarea></p>
				<input type="hidden" name="id" value="<?php echo $id; ?>" />
				<p><input type="submit" value="Send Comment" class="right" /></p>
			</form>
		</div>
	</body>
</html>