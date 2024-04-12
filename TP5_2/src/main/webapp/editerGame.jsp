<%@ page language="java" contentType="text/html; charset=windows-1256"
pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%@include file="header.jsp" %>
<p></p>
<div class="container">
<div class="card">
<div class="card-header">
Modification des Games
</div>
<div class="card-body">
<form action="update.do" method="post">
<div hidden class="form-group" >
 <label class="control-label">ID Game :</label>
 <input type="text" name="id" class="form-control" value="${game.idGame}"/>
</div>
<div class="form-group">
<label class="control-label">Nom Game :</label>
<input type="text" name="nom" class="form-control"
value="${game.nomGame}"/>
</div>
<div class="form-group">
<label class="control-label">Prix :</label>
<input type="text" name="prix" class="form-control" value="${game.prix}"/>
</div>
<div class="form-group">
<select name="studio" class="form-control">
<option value="${game.studio.idCat}"
selected>${game.studio.nomCat}</option>
<c:forEach items="${catModel.studios}" var="cat">
<c:if test="${cat.idCat != game.studio.idCat}">
<option value="${cat.idCat}">${cat.nomCat}</option>
</c:if>
</c:forEach>
</select>
</div>
<div>
<button type="submit" class="btn btn-primary">Modifier</button>
</div>
</form>
</div>
</div>
</div>
</body>
</html>