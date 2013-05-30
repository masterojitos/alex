<?php
$mod = isset($_REQUEST['mod']) ? $_REQUEST['mod'] : 0;
$nav = array(
	"0-Home", 
	"10-Configuration", "10-Access", "11-Appearance", "12-Company", "13-Api", 
	"20-Web Page", 
	"30-Link", "30-Current News", "31-YouTube", "32-Links", 
	"60-PDF", "60-Testimonials", "61-Market Reports", 
	"70-Email", 
	"80-Blog", "80-Themes", "81-Comments"
);
$last_mod = $status = 0;
foreach($nav as $k => $v){
	$array = explode("-", $v);
	$class = $a_class = "";
	if($mod == $array[0]) $class.= 'on ';
	if($k == 0) echo '<ul><li class="'.$class.'radiusTopLeft5 radiusTopRight5"><a href="./" class="radiusTopLeft5 radiusTopRight5">'.$array[1].'</a></li>';
	else{
		if($last_mod + 9 > $array[0]){
			if($array[0] == $last_mod) echo '<ul>';
			else echo '</li>';
			$status = 1;
		}else{
			if($k > 0 and $array[0] != $last_mod) echo '</li>';
			if($status) echo '</ul></li>';
			$status = 0;
			$last_mod = $array[0];
		}
		$class = $a_class = "";
		if(($last_mod == (intval($mod / 10) * 10) and $status != 1) or $mod == $array[0]) $class.= 'on ';
		if($k + 1 == count($nav)) $class.= 'radiusBottomLeft5 radiusBottomRight5';
		if($k + 1 == count($nav)) $a_class = ' class="radiusBottomLeft5 radiusBottomRight5"';
		echo '<li'.($class != "" ? ' class="'.$class.'"' : '').'><a href="./?mod='.$array[0].'"'.$a_class.'>'.$array[1].'</a>';
	}
}
echo '</li></ul>';
if($status) echo '</li></ul>';
?>