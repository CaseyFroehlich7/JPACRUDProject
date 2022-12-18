<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create National Park</title>
<link rel="stylesheet" href="main.css">
</head>
<body>

<h1>Create National Park</h1>
<form action="createPark.do" method="POST">
      <label for="create">Name:</label>
      <input type="text" name="name">
      <br>
      <label for="create">State:</label>
      <input type="text" name="state">
      <br>
      <label for="create">Year Established:</label>
      <input type="text" name="yearEstablished">
      <br>
      <label for="create">Description:</label>
      <input type="text" name="description">
      <br>

 
      <input type="submit" value="Create Park">
    </form>

</body>
</html>