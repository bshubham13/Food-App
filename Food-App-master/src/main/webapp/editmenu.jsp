<%@page import="com.ty.jsp_application_eb8_prc.dto.Menu"%>
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
	Menu menu = (Menu) request.getAttribute("menu");
	%>
	<form action="editmenu" method="post">
		<table>
			<tr>
				<td>Id :</td>
				<td><input type="number" name="id" placeholder="Enter the id"
					value=<%=menu.getId()%> readonly="readonly"></td>
			</tr>
			<tr>
				<td>Name :</td>
				<td><input type="text" name="name" placeholder="Enter the name"
					value=<%=menu.getName()%>></td>
			</tr>
			<tr>
				<td>Description :</td>
				<td><input type="text" name="description"
					placeholder="Enter the description"
					value=<%=menu.getDescription()%>></td>
			</tr>
			<tr>
				<td>Price :</td>
				<td><input type="number" name="price"
					placeholder="Enter the price" value=<%=menu.getPrice()%>></td>
			</tr>
			<tr>
				<td>Offer :</td>
				<td><input type="text" name="offer"
					placeholder="Enter the offer" value=<%=menu.getOffer()%>></td>
			</tr>
			<tr>
				<td><input type="submit" value="Update"></td>
			</tr>
		</table>
	</form>
</body>
</html>