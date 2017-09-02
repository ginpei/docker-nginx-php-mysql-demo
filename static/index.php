<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Hello World!</title>
	</head>
	<body>
<?
$conn = new mysqli('db', getenv('MYSQL_USER'), getenv('MYSQL_PASSWORD'));
?>

<?  if ($conn->connect_error) { ?>
	<p>Failed: <?= $conn->connect_error ?></p>
<? } else { ?>
	<p>OK!</p>
<? } ?>

<?php
phpinfo();
?>
	</body>
</html>
