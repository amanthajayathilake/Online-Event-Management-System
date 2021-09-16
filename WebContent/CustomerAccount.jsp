<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 1px solid black;
		}
	</style>
</head>
<body>

	<table>
	<c:forEach var="cus" items="${customerDetails}">
	
	<c:set var="cid" value="${cus.id}"/>
	<c:set var="cname" value="${cus.name}"/>
	<c:set var="nicnum" value="${cus.nicno}"/>
	<c:set var="genderselect" value="${cus.gend}"/>
	<c:set var="cname" value="${cus.name}"/>
	<c:set var="cemail" value="${cus.email}"/>
	<c:set var="cphone" value="${cus.phone}"/>
	<c:set var="cusername" value="${cus.userName}"/>
	<c:set var="cpassword" value="${cus.password}"/>
	
	<tr>
		<td>Customer ID</td>
		<td>${cus.id}</td>
	</tr>
	<tr>
		<td>Customer Name</td>
		<td>${cus.name}</td>
	</tr>
	<tr>
		<td>NIC</td>
		<td>${cus.nicno}</td>
	</tr>
	<tr>
		<td>Gender</td>
		<td>${cus.gend}</td>
	</tr>
	<tr>
		<td>Customer Email</td>
		<td>${cus.email}</td>
	</tr>
	<tr>
		<td>Customer Phone</td>
		<td>${cus.phone}</td>
	</tr>
	<tr>
		<td>Customer User Name</td>
		<td>${cus.userName}</td>
	</tr>
	
		<tr>
		<td>Customer Password</td>
		<td>${cus.password}</td>
	</tr>

	</c:forEach>
	</table>
	
	
	<c:url value="UpdateCustomerDetails.jsp" var="customerDetUpdate">
		<c:param name="cusid" value="${cid}"/>
		<c:param name="cusname" value="${cname}"/>
		<c:param name="cusnic" value="${nicnum}"/>
		<c:param name="cusgender" value="${genderselect}"/>
		<c:param name="cusemail" value="${cemail}"/>
		<c:param name="cusmobile" value="${cphone}"/>
		<c:param name="cususername" value="${cusername}"/>
		<c:param name="cuspassword" value="${cpassword}"/>	
	</c:url>
	
	<a href="${customerDetUpdate}">
	<button class="btn1" name="update">Update My Data</button>
	</a>
	<br><br><br>
	</body>
	</html>
	