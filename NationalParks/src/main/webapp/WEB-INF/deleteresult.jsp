<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Park Deleted</title>
<link rel="stylesheet" href="main.css">
</head>
<body>
<h1>Delete Successful</h1>

<c:choose>
	<c:when test="${! empty NationalPark}">
	National Park Successfully Deleted!
	</c:when>
	
	<c:otherwise>
	<p>Error Deleting National ParK</p>
	</c:otherwise>

</c:choose>


<a href="home.do">Home</a>

</body>
</html>