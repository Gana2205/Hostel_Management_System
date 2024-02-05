<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>AddDetails</title>
<link rel="stylesheet" href="css/AddDetails.css">
</head>

<body>
	<div class="detailsbox">
		<div class="adddetails">Add Details</div>
		<form:form action="add" method="post" modelAttribute="hostel">
			<div class="details">

				<div class="input-box">
					<span class="data">FullName</span> <input type="text" name="name" />
				</div>

				<div class="input-box">
					<span class="data">Education/job</span> <input type="text"
						name="occupation" required>
				</div>

				<div class="input-box">
					<span class="data">Mobile No</span> <input type="text" name="mblno"
						required>
				</div>

				<div class="input-box">
					<span class="data">Personal Id </span> <input type="text"
						name="idno" required>
				</div>

				<div class="input-box">
					<span class="data">Room No</span> <input type="text" name="roomno"
						required>
				</div>

				<div class="input-box">
					<span class="data">Fee</span> <input type="text" name="fee"
						required>
				</div>

				<div class="input-box">
					<span class="data">DOJ</span> <input type="date" name="doj"
						required>
				</div>

				<div class="submit">
					<input type="submit" value="Add Details">
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>