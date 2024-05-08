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
	<table>
		<tr>
			<td><a href="createmenu.jsp"><button>CREATE MENU</button></a></td>
			<td><a href="home.jsp"><button>LOGOUT</button></a></td>
		</tr>
	</table>
	<table border="2px solid">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Description</th>
			<th>Price</th>
			<th>Offer</th>
			<th>Update</th>
			<th>Delete</th>
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
			<td><a href="update?id=<%=menu.getId()%>"><button>UPDATE</button></a></td>
			<td><a href="delete?id=<%=menu.getId()%>"><button>DELETE</button></a></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>