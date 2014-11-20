<?php
	session_start();
	$_SESSION['id'] = "addUser";
	
	if(isset($_POST['adduser'])){
		require_once('php/hash/hash.php');
		$hash = new Hash;
		$encPassword  = $hash -> passwordEncrypt($_POST['username'], $_POST['password']);
		
		require_once('php/db.php');
		addUser($_POST['username'],$encPassword,$_POST['email'],$_POST['usertype']);
		
	unset($_SESSION['id']);
	}
?>
<!DOCTYPE html>
<html lang="">
<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title></title>
</head>

<body>
	<form action="addUser.php" method="POST">
		<table>
			<tr>
				<td>username:</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>password:</td>
				<td><input type="password" name="password"></td>
			</tr><tr>
				<td>email:</td>
				<td><input type="text" name="email"></td>
			</tr><tr>
				<td>usertype:</td>
				<td><input type="text" name="usertype"></td>
			</tr>
			<tr>
				<td><input type="submit" name="adduser" value="Add"></td>
				<td><input type="reset" value="reset"></td>
			</tr>
		</table>
	
	
	
	</form>
		
</body>
</html>
