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
        <a href="${pageContext.request.contextPath}/editoras">Lista de Editoras</a>
    </h2>
</div>
<div align="center">
    <c:choose>
        <c:when test="${editora != null}">
            <form action="${pageContext.request.contextPath}/editoras/atualizacao" method="post">
                <input type="hidden" name="id" value="${editora.id}" />
                <table border="1">
                    <caption>Edicao</caption>
                    <tr>
                        <td><label for="cnpj">CNPJ</label></td>
                        <td><input type="text" id="cnpj" name="cnpj" size="18" required
                                   value="${editora.CNPJ}" /></td>
                    </tr>
                    <tr>
                        <td><label for="nome">Nome</label></td>
                        <td><input type="text" id="nome" name="nome" size="45" required
                                   value="${editora.nome}" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="Salvar" /></td>
                    </tr>
                </table>
            </form>
        </c:when>
        <c:otherwise>
            <form action="${pageContext.request.contextPath}/editoras/insercao" method="post">
                <table border="1">
                    <caption>Cadastro</caption>
                    <tr>
                        <td><label for="cnpj">CNPJ</label></td>
                        <td><input type="text" id="cnpj" name="cnpj" size="18" required /></td>
                    </tr>
                    <tr>
                        <td><label for="nome">Nome</label></td>
                        <td><input type="text" id="nome" name="nome" size="45" required /></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="Salvar" /></td>
                    </tr>
                </table>
            </form>
        </c:otherwise>
    </c:choose>
</div>
</body>
</html>
