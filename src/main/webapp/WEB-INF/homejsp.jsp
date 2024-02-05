<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>project homepage</title>
</head>
<link rel="stylesheet" href="/css/style.css" />

<body>
	<div class="box">

		<div class="hostel">
			<header> Hostel Management</header>
		</div>
		<form action="enterDetails">
			<div class="admission">
				<button>Admission</button>
			</div>
		</form>
		<form action="show" method="get">
			<div class="hostellist">
				<button>Hostel List</button>
			</div>
		</form>
		<form action="findByRoomno" method="get">
			<div class="room">
				<input type="text" name="roomno" placeholder="Room Details" />
			</div>
			<div class="submit">
				<input type="submit" value="Get Deatils">
			</div>
		</form>
		<p>${messege}</p>

	</div>

</body>

</html>