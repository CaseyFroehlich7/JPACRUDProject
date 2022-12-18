<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="main.css">
</head>
<body>
	<form action="home.do" method="GET">
		 <input type="submit"value="HOME" />
			</form>
			<br>
			<br>

<ul>
<h1>Current National Park Information: </h1>
<li>${NationalPark.id}</li>
<li>${NationalPark.name}</li>
<li>${NationalPark.state}</li>
<li>${NationalPark.yearEstablished}</li>
<li>${NationalPark.description}</li>
</ul>

	

<label name="parkId" value="${NationalPark.id}" hidden></label>
<label name="parkId" value="${NationalPark.id}"></label>


	<form action="getParkToUpdate.do" method="get">
	<input name="parkId" type="hidden" value="${NationalPark.id}">
	<input type="submit" value="Update"/>
	</form>
	<br>
	<form action="deletePark.do" method="get">
	<input name="parkId" type="hidden" value="${NationalPark.id}">
	<input type="submit" value="Delete"/>
	</form>
	
</body>
</html>