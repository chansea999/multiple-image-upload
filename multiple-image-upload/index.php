<?php
# database connection file
include 'db.conn.php';

# fetching images
$sql  = "SELECT img_name FROM
	         images ORDER BY id DESC";

$stmt = $conn->prepare($sql);
$stmt->execute();

$images = $stmt->fetchAll();

?>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Multi Image Upload</title>
	<!-- costume for css  -->
	<style>
		body {
			display: flex;
			align-items: center;
			flex-direction: column;
			font-family: 'Roboto', sans-serif;
		}

		.container {
			margin: 20px 10px;
			color: red;
		}

		.container .btn,
		input[type="file"] {
			border-radius: 6px;
			color: white;
			background-color: #555;
			border: 1px solid blue;

		}

		.container .btn {
			width: auto;
			cursor: pointer;
			padding: 3px;
			margin: 0px 15px;
		}

		.container .btn:hover {
			color: red;
		}

		h1 {
			font-family: 'Times New Roman', Times, serif;
			font-weight: 800;
			text-decoration: underline;
			text-align: center;
			margin: 10px;
			color: green;
		}

		.error {
			color: red;
		}

		.images_all {
			margin: 0 auto;
			width: 80%;
			height: auto;
		}

		.images_all img {
			margin: 10px 5px;
			width: 130px;
			height: 190px;
			border-radius: 5px;
			border: 1px solid blue;
			cursor: pointer;
			background-size: cover;
		}
	</style>
</head>

<body>
	<!-- using by method post (foreach) -->
	<form class="container" method="post" action="upload.php" enctype="multipart/form-data">

		<?php
		if (isset($_GET['error'])) {
			echo "<p class='error'>";
			echo htmlspecialchars($_GET['error']);
			echo "</p>";
		}
		?>

		<input type="file" name="images[]" multiple>

		<button class="btn" type="submit" name="upload">
			Upload</button>
	</form>
	<?php if ($stmt->rowCount() > 0) { ?>
		<div class="images_all">
			<h1>Upload Images</h1>
			<?php foreach ($images as $image) { ?>
				<img src="uploads_images/<?= $image['img_name'] ?>">
			<?php } ?>
		</div>
	<?php } ?>
</body>

</html>