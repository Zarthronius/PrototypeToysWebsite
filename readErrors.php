<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Errors</title>
</head>
<body>
<?php
$fileHandle = fopen("error_log_file.log", "rb");

while(!feof($fileHandle)) {
	$line = fgets($fileHandle);

	if($line) {
		$line = trim($line);
		$part = explode('|', $line);

		$date = $part[0];
		$errorMessage = $part[1];

		echo "<p><strong>Date:</strong> $date</p>\n";
		echo "<p><strong>Error:</strong> $errorMessage</p>\n";
	}
}

fclose($fileHandle);
?>
</body>
</html>
