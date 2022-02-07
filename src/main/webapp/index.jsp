<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</head>
<body>
<header>
<nav class="navbar navbar-expand-lg navbar-light bg-primary ">
  <div class="container-fluid">
    <a class="navbar-brand" href="form.jsp">RaiaDrogasil</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        
        
        <li class="nav-item">
           <a class="navbar-brand" href="index.jsp">Usuarios</a>
        </li>
      </ul>
  </div>
</nav>
</header>
<body>
<br>
<h4 class="text-center">LISTA DE USUARIOS</h4>
<br>
<br>
<div class="container">
<form action="CRUDController" method="post">
		<button type="submit" class="btn btn-primary"name="option" value="insertForm">Adicionar Usuário</button>
	</form>
	
		<table class="table table-bordered" >
			<thead>
				<tr>
					<th>Id</th>
					<th>Nome</th>
					<th>Email</th>
					<th>País</th>
					<th>Ações</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="usuario" items="${listUser}">
					<tr>
						<form action="CRUDController" method="post">
							<td>
								<c:out value="${usuario.id}"/>
								<input type="hidden" name="id" value="${usuario.id}"/>
							</td>
							<td><c:out value="${usuario.nome}"/></td>
							<td><c:out value="${usuario.email}"/></td>
							<td><c:out value="${usuario.pais}"/></td>
							<td><button class="btn btn-primary" type="submit" name="option" value="delete">Deletar</button>
							<button class="btn btn-primary" type="submit" name="option" value="updateForm">Atualizar</button></td>
						</form>
					</tr>
				</c:forEach>
			</tbody>
		</table>
</div>
</body>
</html>