<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete National Park</title>
<link rel="stylesheet" href="main.css">
</head>
<body>

<ul>
<h2>Warning! You are about to delete a National Park.</h2>
<h1>National Park: </h1>
<li>${NationalPark.id}</li>
<li>${NationalPark.name}</li>
<li>${NationalPark.state}</li>
<li>${NationalPark.yearEstablished}</li>
<li>${NationalPark.description}</li>
</ul>
<form action="deleteresult.do" method="POST">
<input id="parkId" value="${NationalPark.id}" name="parkId" type="hidden"/>
      <input type="submit" value="Delete Park">
    </form>

</body>
</html>