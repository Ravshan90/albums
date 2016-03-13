<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="">
		<meta name="author" content="">
		<title>Albums</title>
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
	</head>
	<body>
		<div class="container">
			<form class="form-album">
				<h2 class="form-album-heading">Album:</h2>
				<input type="text" id="album" class="form-control" placeholder="">
				 <div class="form-group">
					<label for="album_type">Select type of album:</label>
					<select class="form-control" id="album_type">
						<option value="MIN">MIN</option>
						<option value="MAX">MAX</option>
					</select>
				</div>
				<button class="btn btn-lg btn-primary btn-block" type="submit" autofocus>Get Album</button>
				
			</form>
		</div>
		<script src="js/jquery.min.js"></script>
		<script src="js/scripts.js"></script>
	</body>
</html>
