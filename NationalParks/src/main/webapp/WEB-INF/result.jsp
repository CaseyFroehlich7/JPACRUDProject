<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

<h1>Results JSP</h1>

<label name="parkId" value="${NationalPark.id}" hidden></label>
<label name="parkId" value="${NationalPark.id}"></label>


${NationalPark.id}
${NationalPark.name}
${NationalPark.state}
${NationalPark.yearEstablished}
${NationalPark.description}
<a href="getParkToUpdate.do" value="${NationalPark.id}">Update Park</a>
	<form action="getParkToUpdate.do" method="get">
	<input name="parkId" type="hidden" value="${NationalPark.id}">
	<button>Update</button>
	</form>
	<form action="deletePark.do" method="get">
	<input name="parkId" type="hidden" value="${NationalPark.id}">
	<input type="submit" value="Delete National Park"/>
	</form>
	
</body>
</html>