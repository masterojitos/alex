<?php
require_once "conf.php";
$theme_featured = tbl_blog("theme-featured");
$page = isset($_GET['page']) ? $_GET['page'] : 1;
if(!$page) header("Location: ./");
$page_display = 1;
$page_start = ($page * $page_display) - ($page_display - 1);
$page_end = $page * $page_display;
$pagination = array("start" => $page_start, "display" => $page_display);
$theme_list = tbl_blog("theme-list", $pagination);
if(!count($theme_list)) header("Location: ./");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es-es">
	<head>
		<title>Devirtual - Portal de noticias del Per&uacute;</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<meta name="Title" content="Devirtual - Portal de noticias del Per&uacute;" />
		<meta name="Description" content="Noticias del Per&uacute;. Trome.pe te ofrece las &uacute;ltimas noticias de espect&aacute;culos, policiales, deportes, familia y actualidad. Videos, fotos y m&aacute;s. Informaci&oacute;n, promociones y diversi&oacute;n con estilo popular." />
		<meta name="Keywords" content="Per&uacute;, f&uacute;tbol, futbolperuano, f&uacute;tbol peruano, viaje, tour, turismo, email, chat, blog, cine, fertilidad, chicas, chistes, radio, hor&oacute;scopo, noticias, economía, peruanos, regalos, folklore, machu picchu" />
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
		<div id="blog">
			<?php if($page == 1){ ?>
			<div class="theme-featured">
				<h2><a href="blog.php?theme=<?php echo $theme_featured['id']; ?>-<?php echo mo_friendly($theme_featured['name']); ?>"><?php echo mo_unscape($theme_featured['name']); ?></a></h2>
				<div class="file">
					<?php if(end(explode(".", $theme_featured['file'])) != "flv"){ ?>
					<a href="blog.php?theme=<?php echo $theme_featured['id']; ?>-<?php echo mo_friendly($theme_featured['name']); ?>"><img src="userfiles/<?php echo mo_unscape($theme_featured['file']); ?>" alt="" /></a>
					<?php }else{ ?>
					<a href="userfiles/<?php echo mo_unscape($theme_featured['file']); ?>" id="player"></a>
					<?php } ?>
				</div>
				<?php echo $theme_featured['detail']; ?>
			</div>
			<?php } ?>
			<h3>Themes <?php echo $page_start; ?> to <?php echo $page_end; ?></h3>
			<?php foreach($theme_list as $k => $v){ ?>
			<div class="theme">
				<div class="thumbnail"><a href="blog.php?theme=<?php echo $v['id']; ?>-<?php echo mo_friendly($v['name']); ?>"><img src="userfiles/<?php echo mo_unscape($v['thumbnail']); ?>" alt="" /></a></div>
				<h2><a href="blog.php?theme=<?php echo $v['id']; ?>-<?php echo mo_friendly($v['name']); ?>"><?php echo mo_unscape($v['name']); ?></a></h2>
				<?php echo $v['detail']; ?>
				<div class="date">Posted on <?php echo mo_parseTime($v['date']); ?></div>
			</div>
			<?php } ?>
			<div class="space"></div>
			<?php if($page > 1){ ?><a href="./?page=<?php echo $page - 1; ?>" class="MOButton left">&laquo; Newest</a><?php } ?>
			<a href="./?page=<?php echo $page + 1; ?>" class="MOButton right">Oldest &raquo;</a>
			<div class="clear"></div>
		</div>
	</body>
</html>