<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Livraria Virtual</title>
</head>
<body>
<div align="center">
    <h1>Gerenciamento de Editoras</h1>
    <h2>
        <a href="${pageContext.request.contextPath}/editoras/cadastro">Nova Editora</a>
        <a href="${pageContext.request.contextPath}/">Inicio</a>
    </h2>
</div>
<div align="center">
    <table border="1">
        <caption>Lista de Editoras</caption>
        <tr>
            <th>ID</th>
            <th>CNPJ</th>
            <th>Nome</th>
            <th>Acoes</th>
        </tr>
        <c:forEach var="editora" items="${requestScope.listaEditoras}">
            <tr>
                <td>${editora.id}</td>
                <td>${editora.CNPJ}</td>
                <td>${editora.nome}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/editoras/edicao?id=${editora.id}">Edicao</a>
                    <a href="${pageContext.request.contextPath}/editoras/remocao?id=${editora.id}">Remocao</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
