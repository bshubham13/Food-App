<%@page import="com.ty.jsp_application_eb8_prc.dto.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ty.jsp_application_eb8_prc.dto.Items"%>
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
	List<Items> list = (List) request.getAttribute("list");
	%>
		<%User user=(User)request.getAttribute("user"); %>
	

	<a href="foodorder"><button>+ADD</button></a>
	<table border="2px solid">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Description</th>
			<th>Price</th>
			<th>Offer</th>
			<th>Quantity</th>
			<th>Payable Amount</th>
			<th>Update Order</th>
			<th>Delete Order</th>
		</tr>
		<%
		for (Items items : list) {
		%>
		<tr>
			<td><%=items.getId()%></td>
			<td><%=items.getName()%></td>
			<td><%=items.getDescription()%></td>
			<td><%=items.getPrice()%></td>
			<td><%=items.getOffer()%></td>
			<td><%=items.getQuantity()%></td>
			<td><%=items.getPrice() * items.getQuantity()%></td>
			<td><a href="updateorder?id=<%=items.getId()%>"><button>UPDATE</button></a></td>
			<td><a href="deleteorder?id=<%=items.getId()%>"><button>DELETE</button></a></td>
		</tr>
		<%
		}
		%>


	</table>
	<form action="print">
		<table>
			<tr>
				<td>Name :</td>
				<td><input type="text" name="name" value="<%=user.getName() %>"
					placeholder="Enter the customer name"></td>
			</tr>
			<tr>
				<td>Email :</td>
				<td><input type="email" name="email" value="<%=user.getEmail() %>"
					placeholder="Enter the customer email"></td>
			</tr>
			<tr>
				<td>Address :</td>
				<td><input type="text" name="address" value="<%=user.getAddress() %>"
					placeholder="Enter the customer address"></td>
			</tr>
			<tr>
				<td>Phone :</td>
				<td><input type="tel" name="phone" value="<%=user.getPhone() %>"
					placeholder="Enter the customer phone"></td>
			</tr>

			<tr>
				<td><input type="submit" value="PRINT RECEIPT"></td>
			</tr>
		</table>
	</form>
</body>
</html>