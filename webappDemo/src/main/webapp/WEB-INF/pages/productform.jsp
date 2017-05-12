<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
<%@ page isELIgnored="false" %>

<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
	<%@ include file="Header.jsp" %>
		<div class="container wrapper">
			<div class="container">
				<url:url var="url" value="/admin/product/saveproduct"></url:url>
				<form:form action="${url }" modelAttribute="product" method="post">
				<table>
				<tr>
					<div class="form-group">
						<label for="id"></label>
						<form:hidden path="id" ></form:hidden>
					</div>
					</tr>
					<tr>
					<div class="form-group">
						<td><label for="name">Enter Product name</label></td>
						<td><form:input path="name"></form:input></td>
					</div>
					</tr>
					<tr>
					<div class="form-group">
						<td><label for="manufacturer">Product Manufacturer</label></td>
						<td><form:input  path="manufacturer"></form:input></td>
					</div>
					</tr>
					<tr>
					<div class="form-group">
						<td><label for="price">Product Price</label></td>
						<td><form:input  path="price"></form:input></td>
					</div>
					</tr>
					<tr>
					<div class="form-group">
						<td><label for="unitInStock">Unit In Stock</label></td>
						<td><form:input  path="unitInStock"></form:input></td>
					</div>
					</tr>
					<tr>
					<div class="form-group">
						<td><label for="description">Description</label></td>
						<td><form:input  path="description"></form:input></td>
					</div>
					</tr>
					<tr>	
					<td><input type="submit" value="Add Product"></td>
					</tr>
					</table>
				</form:form>
			</div>
		</div>
	</body>

	<%@ include file="Footer.jsp" %>
</html>