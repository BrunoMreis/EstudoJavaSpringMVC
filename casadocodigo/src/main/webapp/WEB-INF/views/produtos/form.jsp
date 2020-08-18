<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Livros de Java, Android, iPhone, PHP, Ruby e muito mais -
	Casa do C�digo</title>
</head>
<body>
	<form:form action="${s:mvcUrl('PC#gravar').build()}" method="POST"
		modelAttribute="produto" enctype="multipart/form-data">
		<div>
			<label>Titulo</label>
			<form:input path="titulo" />
			<form:errors path="titulo" />
		</div>
		<div>
			<label>Descri��o</label>

			<form:textarea rows="10" cols="20" path="descricao" />
			<form:errors path="descricao" />
		</div>
		<div>
			<label>P�ginas</label>
			<form:input type="text" path="paginas" />
			<form:errors path="paginas" />
		</div>
		<div>
			<label>Data de lan�amento</label>
			<form:input path="dataDeLancamento" />
			<form:errors path="dataDeLancamento" />
		</div>

		<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
			<div>
				<label>${tipoPreco}</label> <label>${tipoPreco}</label> <input
					type="text" name="precos[${status.index}].valor" /> <input
					type="hidden" name="precos[${status.index}].tipo"
					value="${tipoPreco}" />
			</div>

		
		</c:forEach>
		
		<div>
			<label>Sum�rio</label>
			<input type="file" name="sumario"/>
		</div>

		<button type="submit">Cadastro</button>

	</form:form>
</body>
</html>