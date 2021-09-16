<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home Page</title>
</head>
<body>

	<%
		String id=request.getParameter("cusid");
		String name=request.getParameter("cusname");
		String nicNum=request.getParameter("cusnic");
		String cusGender=request.getParameter("cusgender");
		String Email=request.getParameter("cusemail");
		String phone=request.getParameter("cusmobile");
		String UserName=request.getParameter("cususername");
		String Password=request.getParameter("cuspassword");
	%>

	<form action="updateCustomer" method="post">
		Customer ID<input type="text" name="cusid" value="<%= id %>" readonly><br> 
		Customer Name<input type="text" name="cusname" value="<%= name %>"><br>
		Customer NIC<input type="text" name="cusnic" value="<%= nicNum %>"><br>
		Customer Gender<input type="text"  value="<%= cusGender %>"readonly><br>
          Male<input type ="radio" name="cusgender" value="Male">
          Female<input type ="radio" name="cusgender" value="Female"><br>
          
          
		Customer Email<input type="text" name="cusemail" value="<%= Email %>"><br>
		Customer Contact Number<input type="text" name="cusmobile" value="<%= phone %>"><br>
		Your Username<input type="text" name="cususername" value="<%= UserName %>"><br>
		Your Password<input type="text" name="cuspassword" value="<%= Password %>"><br>

		
		<button class="btn1"type="submit" name="submit">Update Status</button>
	</form>

</body>
</html>