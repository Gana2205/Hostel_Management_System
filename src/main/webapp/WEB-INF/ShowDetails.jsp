<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Show Page</title>
<link rel="stylesheet" href="css/Show.css">
<h2>Hostellers List</h2>
</head>

<body>
	<div class="homelink">
		<a href="/">Go To HomePage</a>
	</div>

	<div class="tbl">
		<table>
			<tr>
				<th>S.No</th>
				<th>Room No</th>
				<th>Name</th>
				<th>Mbl No</th>
				<th>Id.No</th>
				<th>Occupation</th>
				<th>Fee</th>
				<th>Doj</th>
				<th>Actions</th>
			</tr>
			<c:forEach var="hostel" items="${list}">
				<tr>

					<td>${hostel.id}</td>
					<td>${hostel.roomno}</td>
					<td>${hostel.name}</td>
					<td>${hostel.mblno}</td>
					<td>${hostel.idno}</td>
					<td>${hostel.occupation}</td>
					<td>${hostel.fee}</td>
					<td>${hostel.doj}</td>
					<td><a href="/Edit?idno=${hostel.idno}&id=${hostel.id}">Edit</a>
						&nbsp&nbsp&nbsp<a
						href="/Delete?idno=${hostel.idno}&id=${hostel.id}">Delete</a></td>

				</tr>
			</c:forEach>
		</table>
	</div>
</body>

</html>