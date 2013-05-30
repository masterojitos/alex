<?php
require_once "../conf.php";
$cn->query("select username, password from configuration");
?>
<form>
	<fieldset>
		<legend>Update Information</legend>
		<table width="100%">
			<tr>
				<td><label for="user">User</label></td>
				<td><input type="text" name="user" id="user" value="<?php echo $cn->result('username'); ?>" /></td>
			</tr>
			<tr>
				<td><label for="password">Password</label></td>
				<td><input type="password" name="password" id="password" value="<?php echo $cn->result('password'); ?>" /></td>
			</tr>
			<tr>
				<td colspan="2"><br /><input type="submit" value="Submit" /> <input type="button" value="Cancel" class="list" /></td>
			</tr>
		</table>
	</fieldset>
</form>