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
	
<h1>Explore National Parks</h1>

${parkList}
<ul>
<li>${NationalPark.parkId}</li>
<li>${NationalPark.name}</li>
<li>${NationalPark.state}</li>
<li>${NationalPark.yearEstablished}</li>
<li>${NationalPark.description}</li>


</ul>

<br>
<br>
	<form action="home.do" method="GET">
		 <input type="submit"value="HOME" />
			</form>
	<br>
<br>
	<form action="create.do" method="GET">
		 <input type="submit"value="Create a National Park" />
			</form>
	<br>
<br>
	<form action="deletepark.do" method="GET">
		 <input type="submit"value="Delete Your Park" />
			</form>
	<br>
<br>
	<form action="update.do" method="POST">
		 <input type="submit"value="Update Your Park" />
			</form>
	


	

</body>
</html>