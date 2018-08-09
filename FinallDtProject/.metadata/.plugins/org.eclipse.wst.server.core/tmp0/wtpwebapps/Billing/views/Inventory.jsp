<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.css" />

<script type="text/javascript"
	src="https://cdn.datatables.net/v/dt/dt-1.10.16/datatables.min.js"></script>
<script type="text/javascript" charset="utf-8"
	src="/DataTables/media/js/jquery.js"></script>
<script type="text/javascript" charset="utf-8"
	src="/DataTables/media/js/jquery.dataTables.js"></script>
<style type="text/css" title="currentStyle">
@import "../resources/css/demo_table.css";
</style>
</head>
<body>
	<br />
	<jsp:include page="header.jsp"></jsp:include>
	<%
		String id = request.getParameter("userId");
		String driverName = "com.mysql.jdbc.Driver";
		String connectionUrl = "jdbc:h2:tcp://localhost/~/testabi";
		String userId = "sa";
		String password = "";

		try {
			Class.forName(driverName);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
	%>
	<%
		try {
			connection = DriverManager.getConnection(connectionUrl, userId, password);
			statement = connection.createStatement();
			String sql = "SELECT * FROM USERMODEL ";

			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
	%>

	<tr>
		<td><%=resultSet.getString("USERID")%></td>
		<td><%=resultSet.getString("DATE")%></td>
		<td><%=resultSet.getString("NAME")%></td>
		<td><%=resultSet.getString("SAMPLE_TYPE")%></td>
		<td><%=resultSet.getString("WEIGHT")%></td>
		<td><%=resultSet.getString("GOLD")%></td>
		<td><%=resultSet.getString("SILVER")%></td>
		<td><%=resultSet.getString("COPPER")%></td>
		<td><%=resultSet.getString("ZINC")%></td>
		<td><%=resultSet.getString("KDM")%></td>
		<td><%=resultSet.getString("NICKEL")%></td>
		<td><%=resultSet.getString("IRIDIUM")%></td>
		<td><%=resultSet.getString("TIN")%></td>
		<td><%=resultSet.getString("IRON")%></td>
		<td><%=resultSet.getString("RHODIUM")%></td>
		<td><%=resultSet.getString("OTHERS")%></td>

	</tr>

	<%
		}

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	</table>
	<br>
	<br>
	<table class="table table-striped table-bordered dt-responsive nowrap"
		style="font-family: cursive">

		<thead>
			<tr>
				<th>Actions</th>
				<th>USERID</th>
				<th>DATE</th>
				<th>NAME</th>
				<th>SAMPLE_TYPE</th>
				<th>WEIGHT</th>
				<th>GOLD</th>
				<th>SILVER</th>
				<th>COPPER</th>
				<th>ZINC</th>
				<th>KDM</th>
				<th>NICKEL</th>
				<th>IRIDIUM</th>
				<th>TIN</th>
				<th>IRON</th>
				<th>RHODIUM</th>
				<th>OTHERS</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${ulist}" var="u">
				<tr>
					<td><a class="fa fa-pencil-square-o"
						href="./product_edit?id=${p.productid}"> </a> <a
						class="fa fa-trash-o" href="./product_delete?id=${p.productid}"></a></td>
					<td>${u.USERID}</td>
					<td>${u.DATE}</td>
					<td>${u.NAME}</td>
					<td>${u.SAMPLE_TYPE}</td>
					<td>${u.WEIGHT}</td>
					<td>${u.GOLD}</td>
					<td>${u.SILVER}</td>
					<td>${u.COPPER}</td>
					<td>${u.ZINC}</td>
					<td>${u.KDM}</td>
					<td>${u.NICKEL}</td>
					<td>${u.IRIDIUM}</td>
					<td>${u.TIN}</td>
					<td>${u.IRON}</td>
					<td>${u.RHODIUM}</td>
					<td>${u.OTHERS}</td> <
				</tr>
			</c:forEach>
		</tbody>

	</table>
	<jsp:include page="footer.jsp"></jsp:include>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="../resources/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript"
		src="../resources/js/dataTables.bootstrap.min.css"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('.table').DataTable();
		});
	</script>

</body>
</html>