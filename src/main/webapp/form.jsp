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
<nav class="navbar navbar-expand-lg navbar-light bg-primary ">
  <div class="container-fluid">
    <a class="navbar-brand" href="form.jsp">RaiaDrogasil</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        
        
        <li class="nav-item">
          <a class="navbar-brand" href="#">Usuarios</a>
        </li>
      </ul>
  </div>
</nav>

<body>



  <form action="CRUDController" method="post">
		<c:choose>
			<c:when test="${ user == null }">
			<div class="container mt-5 col-6" style="outline: 1px solid #d5d5d5; border-radius: 11px; padding: 16px;">
				<label style="margin-right: 17px;">Nome:</label><input type="text" name="name" required/><br>
				<label style="margin-right: 23px;">Email:</label><input type="text" name="email"/><br>
				<label style="margin-right: 32px;">País:</label><input type="text" name="pais"/><br>
			
				<button style="margin-top: 13px;" class="btn btn-primary" type="submit" name="option" value="insert">Salvar</button>
				</div>
			</c:when>
			<c:otherwise>
			<div class="container mt-5 col-6" style="outline: 1px solid #d5d5d5; border-radius: 11px; padding: 16px;">
				<input type="hidden" name="id" value="${user.id}"/><br>
				<label>Nome:</label><input type="text" name="name" value="${user.nome}" required/><br>
				<label>Email:</label><input type="text" name="email" value="${user.email}"/><br>
				<label>País:</label><input type="text" name="pais" value="${user.pais}"/><br>
			
				<button class="btn btn-primary" type="submit" name="option" value="update">Atualizar</button>
			</div>
			</c:otherwise>
		</c:choose>
	</form>
</body>

</html>