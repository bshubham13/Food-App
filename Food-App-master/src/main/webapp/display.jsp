<%@page import="com.ty.jsp_application_eb8_prc.dto.Items"%>
<%@page import="com.ty.jsp_application_eb8_prc.dto.FoodOrder"%>
<%@page import="com.ty.jsp_application_eb8_prc.dto.Menu"%>
<%@page import="java.util.List"%>
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
	List<Menu> menus = (List) request.getAttribute("menus");
	%>
	<table border="2px solid">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Description</th>
			<th>Price</th>
			<th>Offer</th>
		</tr>
		<%
		for (Menu menu : menus) {
		%>
		<tr>
			<td><%=menu.getId()%></td>
			<td><%=menu.getName()%></td>
			<td><%=menu.getDescription()%></td>
			<td><%=menu.getPrice()%></td>
			<td><%=menu.getOffer()%></td>
		</tr>
		<%
		}
		%>
	</table>
	<h4>Previous orders</h4>
	<%
	FoodOrder foodOrder=(FoodOrder)request.getAttribute("foodorder");
	%>
	<%
	if (foodOrder != null) {
	%>
	<table border="2px solid">
		<tr>
			<th>Name</th>
			<th>Description</th>
			<th>Price</th>
			<th>Offer</th>
			<th>Quantity</th>
			<th>Total Amount</th>
		</tr>
		<%
			for (Items items : foodOrder.getItems()) {
		%>
		<tr>
			<td><%=items.getName()%></td>
			<td><%=items.getDescription()%></td>
			<td><%=items.getPrice()%></td>
			<td><%=items.getOffer()%></td>
			<td><%=items.getQuantity()%></td>
			<td><%=items.getPrice() * items.getQuantity()%></td>
		</tr>
		<%
		}
		}
		
		%>
	</table>
	<a href="login.jsp"><button>StaffLogin</button></a>
</body>
</html>