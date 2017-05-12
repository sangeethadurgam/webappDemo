<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="Header.jsp" %>
<div class="container">

<table >
<tr>
<th>Product Name</th><th>Price</th><th>Action</th>
</tr>

<c:forEach items="${products}" var="p" >
<tr>
<td>${p.name}</td>
<td>${p.price }</td>
<url:url value="/all/product/viewproduct/${p.id}" var="url"></url:url>
<td><a href="${url }"><span class="glyphicon glyphicon-info-sign"></span></a></td>
<url:url value="/admin/product/deleteproduct/${p.id}" var="url"></url:url>
<td><a href="${url }"><span class="glyphicon glyphicon-trash"></span></a></td>
</tr>
</c:forEach>
</table>
</div>
</body>
<%@ include file="Footer.jsp" %>
</html>