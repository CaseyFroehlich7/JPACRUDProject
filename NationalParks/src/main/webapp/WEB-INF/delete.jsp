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
<h2>${id} delete check</h2>
<h1>Delete National Park</h1>
<form action="deleteresult.do" method="POST">
      <input type="submit" value="Delete Park">
    </form>

</body>
</html>