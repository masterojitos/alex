<h1>Configuration</h1>
<a href="./">Home </a> - <a href="#" class="list">Access</a><br />
<div align="center" class="MOForm">
	<br /><div id="list"></div>
	<br /><div id="form"></div>
</div>
<script type="text/javascript">
$(document).ready(function(){
	var mod = 10;
	mo_list(mod);
	$(".list").live("click", function(){ mo_list(mod); return false; });
	$(".update").live("click", function(){ mo_update(mod, $(this)); return false; });
	$("form").live("submit", function(){ mo_submit(mod, 5); return false; });
});
</script>