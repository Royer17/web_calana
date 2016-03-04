<html>
	<head>
		<title>Upload Form</title>
	</head>
	<body>

		<h3>Your file was successfully uploaded!</h3>

		<ul>
		<?php foreach ($registro as $row => $value):?>
		<li><?php echo $row;?>: <?php echo $value;?></li>
		<?php endforeach; ?>
		</ul>

		<p><?php echo anchor('upload', 'Upload Another File!'); ?></p>

	</body>
</html>