<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update National Park</title>
<link rel="stylesheet" href="main.css">
</head>
<body>

${NationalPark.id} id check

<h1>Update National Park</h1>
<form action="updatepark.do" method="POST">
<input id="parkId" value="${NationalPark.id}" name="parkId" type="hidden"/>
           <label for="update">Name:</label>
      <input type="text" name="name">
      <br>
      <label for="update">State:</label>
      <input type="text" name="state">
      <br>
      <label for="update">Year Established:</label>
      <input type="text" name="yearEstablished">
      <br>
      <label for="update">Description:</label>
      <input type="text" name="description">
      <br>
     
 
      <input type="submit" value="Update Park">
    </form>

</body>
</html>