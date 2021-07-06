<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
		
		<title>Curso JSP e Servlets</title>
		
		<style type="text/css">
			form {
				position: absolute;
				top: 40%;
				left: 33%;
			}
			
			h2 {
				position: absolute;
				top: 30%;
				left: 33%;
			}
			
			.msg {
				position: absolute;
				top: 60%;
				left: 33%;
				font-size: 16px;
				color: red;
			}			
		</style>
	</head>
	
	<body>
	
		<h5 class="msg">${msg}</h5>
		
		<h2>Curso de JSP - Login</h2>
		
		<form action="ServletLogin" method="post" class="row g-3">
		
			<input type="hidden" value="<%= request.getParameter("url") %>" name="url">

			<div class="col-md-6">
				<label for="login" class="form-label">Login</label> 
				<input type="text" class="form-control" id="login">
			</div>
			
			<div class="col-md-6">
				<label for="senha" class="form-label">Senha</label> 
				<input type="password" class="form-control" id="senha">
			</div>

			<div class="col-12">
    			<button type="submit" class="btn btn-primary">Acessar</button>
  			</div>
		</form>
		
		<!-- Option 1: Bootstrap Bundle with Popper -->
    	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
		
	</body>
</html>