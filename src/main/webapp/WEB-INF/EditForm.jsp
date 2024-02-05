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
		<form:form action="edit/${id}" modelAttribute="hostel">
			<div class="details">

				<div class="input-box">
					<span class="data">FullName</span>
					<form:input path="name" />
				</div>

				<div class="input-box">
					<span class="data">Education/job</span>
					<form:input path="occupation" />
				</div>

				<div class="input-box">
					<span class="data">Mobile No</span>
					<form:input path="mblno" />
				</div>

				<div class="input-box">
					<span class="data">Personal Id </span>
					<form:input path="idno" />
				</div>

				<div class="input-box">
					<span class="data">Room No</span>
					<form:input path="roomno" />
				</div>

				<div class="input-box">
					<span class="data">Fee</span>
					<form:input path="fee" />
				</div>

				<div class="input-box">
					<span class="data">DOJ</span>
					<form:input path="doj" />
				</div>

				<div class="submit">
					<input type="submit" value="Update">
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>