<?php
require_once "../conf.php";
$cn->query("select username, password from configuration");
?>
<br />
<fieldset>
	<legend>Information</legend>
	<table width="100%">
		<tr>
			<td><label for="user">User</label></td>
			<td><?php echo $cn->result('username'); ?></td>
		</tr>
		<tr>
			<td><label for="password">Password</label></td>
			<td><?php echo $cn->result('password'); ?></td>
		</tr>
		<tr>
			<td colspan="2"><input type="button" value="Edit" class="update" /></td>
		</tr>
	</table>
</fieldset>