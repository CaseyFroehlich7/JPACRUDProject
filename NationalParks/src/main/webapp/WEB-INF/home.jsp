<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>National Parks</title>
</head>
<body>

<h1>U.S. National Parks</h1>


	<form action="result.do" method="GET">
		Enter National Park Id: <input type="text" name="parkId" /> <input type="submit"
			value="Search" />
			</form>
			<br>
			<br>
	<form action="explore.do" method="GET">
		Explore National Parks: <input type="submit"
			value="Search" />
			</form>
			<br>
			<br>
	<form action="createPark.do" method="GET">
		Create National Park: <input type="submit"
			value="Search" />
			</form>
			<br>
			<br>
	<form action="updateresults.do" method="GET">
		Update National Park:  <input type="submit"
			value="Search" />
			</form>
			<br>
			<br>
	<form action="deletePark.do" method="GET">
		Delete National Park:  <input type="submit"
			value="Search" />
			</form>
	

	<!-- <a href="explore.do">Explore National Parks</a><br>
	<a href="createPark.do">Create Your Own Park</a><br>
	<a href="updatePark.do">Update Your Park</a><br>
	<a href="deletePark.do">Delete Your Park</a><br> -->

</body>
</html>