<?php
$masoji_dir = rtrim(realpath(dirname(__FILE__)), DIRECTORY_SEPARATOR);
if($manager = opendir("$masoji_dir/class/")){
	while(($file = readdir($manager)) !== false) 
		if($file != "." and $file != "..") 
			if(strtolower(end(explode(".", $file))) == "php") require_once "$masoji_dir/class/$file";
	closedir($manager);
}
$cn = Connection::getInstance();
?>