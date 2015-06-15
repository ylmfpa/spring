<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="styles/henkilot.css">
<title>Henkilöt</title>
</head>
<body>



	<table>
		<caption>Henkilöt</caption>

		<thead>
			<tr>
				<td>ID</td>
				<td>ETUNIMI</td>
				<td>SUKUNIMI</td>
				<td>+/-</td>
			</tr>
		</thead>

		<tbody>

			<c:forEach items="${henkilot}" var="henk">
				<tr>
					
					<td><c:out value="${henk.id}" /></td>
					<td><c:out value="${henk.etunimi}" /></td>
					<td><c:out value="${henk.sukunimi}" /></td>
					<td>
						<form action="henkilot" method="post">
							<input type="hidden" name="deluserid" value="${henk.id}" />
							<button class="poista" type="submit">
								<b>-</b>
							</button>
						</form></td>
				</tr>
			</c:forEach>
		</tbody>

		
		<tfoot>

			<tr>
				<form action="henkilot" method="post">		
				<td>LISÄÄ</td>
				<td><input type="text" name="etunimi" placeholder="etunimi..." /></td>
				<td><input type="text" name="sukunimi"
					placeholder="sukunimi..." /></td>
				<td><button type="submit">
						<b>+</b>
					</button></td>
				</form>

			</tr>

		</tfoot>
		
	</table>

</body>
</html>