<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Curso JSP e Servlets</title>
	</head>
	
	<body>
	
		<h4>${msg}</h4>
		<form action="ServletLogin" method="post">
			<table>
				<tr>
					<td>
						<label>Login</label>
						<input type="text" name="login">					
					</td>
				</tr>
				<tr>
					<td>
						<label>Senha</label>
						<input type="password" name="senha">
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="Enviar">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>