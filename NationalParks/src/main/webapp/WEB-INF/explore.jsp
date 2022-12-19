<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>National Parks</title>
<link rel="stylesheet" href="main.css">
</head>
<body>
	<br>
<br>
	<form action="home.do" method="GET">
		 <input type="submit"value="HOME" />
			</form>
			<br>
			<br>

	<form action="result.do" method="GET">
		<h1>Search By National Park Id:</h1>
		<br>
		<input type="text" name="parkId" /> <input type="submit"
			value="Search" />
			</form>
			<br>

	<form action="createPark.do" method="GET">
		 <input type="submit"value="Create a National Park" />
			</form>
	
<br>
<!-- 	<form action="delete.do" method="GET">
		 <input type="submit"value="Delete Your Park" />
			</form>
	
<br>
	<form action="getParkToUpdate.do" method="POST">
		 <input type="submit"value="Update Your Park" />
			</form>
	 -->


	

</body>
</html>