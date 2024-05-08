<%@page import="com.ty.jsp_application_eb8_prc.dto.Items"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	Items items = (Items) request.getAttribute("items");
	%>
	<form action="editorder" method="post">
		<table>
			<tr>
				<td>Id :</td>
				<td><input type="number" name="id" value=<%=items.getId()%>
					readonly="readonly"></td>
			</tr>
			<tr>
				<td>Name :</td>
				<td><input type="text" name="name" value=<%=items.getName()%>
					readonly="readonly"></td>
			</tr>
			<tr>
				<td>Description :</td>
				<td><input type="text" name="description"
					value=<%=items.getDescription()%> readonly="readonly"></td>
			</tr>
			<tr>
				<td>Price :</td>
				<td><input type="number" name="price"
					value=<%=items.getPrice()%> readonly="readonly"></td>
			</tr>
			<tr>
				<td>Offer :</td>
				<td><input type="text" name="offer" value=<%=items.getOffer()%>
					readonly="readonly"></td>
			</tr>
			<tr>
				<td>Quantity :</td>
				<td><input type="number" name="quantity"
					value=<%=items.getQuantity()%>></td>
			</tr>
			<tr>
				<td><input type="submit" value="Update"></td>
			</tr>
		</table>
	</form>
</body>
</html>