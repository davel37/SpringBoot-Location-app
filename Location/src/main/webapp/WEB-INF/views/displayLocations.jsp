<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
     <%@page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<h2>Locations: </h2>
<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">code</th>
      <th scope="col">name</th>
      <th scope="col">type</th>
      
    </tr>
  </thead>
  <tbody>
<c:forEach items = "${locations}" var = "location">
<tr>
<td scope="col">${location.id}</td>
<td scope="col">${location.code}</td>
<td scope="col">${location.name}</td>
<td scope="col">${location.type}</td>
<td scope="coL"><a href ="deleteLocation?id=${location.id}">delete</a>
<td scope="coL"><a href ="showUpdate?id=${location.id}">edit</a>

</tr>
</c:forEach>
</tbody>
</table>

<a href = "showCreate">Add Location</a>
</body>
</html>