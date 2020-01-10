<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>后台管理</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
	<style>
		.tableBox{
			width: 1400px;
			margin: 3em auto;
			overflow: auto;
		}
		th,td{
			padding: 0.8em 1em;
			text-align: center;
			font: 1.3em "微软雅黑";
		}
		.th{
			border: none;
		}
		.head{
			position: sticky;
			top: 0px;
		}
		td{
			border-right:  1px rgb(201, 201, 201) solid;
		}
		.rightEnd{
			border-right: none;
		}
		tr{
			border-bottom: 1px rgb(201, 201, 201) solid; 
			box-sizing: border-box;
			
		}
		input[type=submit]{
			display: block;
			float: left;
			margin-top: 2.5em;
			padding: 0.5em 1em;
			background-color: rgb(2, 147, 243);
			color: white;
			border-radius: 8px;
		}
		img{
			height: 100px;
		}
		input {
			display:block;
			border: none;

		}
		input[type=number]{
			display:block;
			width: 80px;
		}
		.intro{
			height: 100px;
		}
		.head :hover{
			background-color: white;
			border-bottom: 1px rgb(201, 201, 201) solid;

		}
		tr:hover{
	 		background-color: #eddbf0;
			 border: 3px #e389f3 solid;
		}

		tr:hover input{
			background-color: #eddbf0;
		}
		.updateBn{
			display: none;
			height: 70px;
			width: 70px;
			
		}
		tr:hover .updateBn{
			display: block;
			border: #e389f3 2px solid;
			background: rgba(255, 0, 0, 0);
			font: 1.5em;
			color: #e389f3;
		}
		tr:hover .id{
			display: none;;
		}
	</style>
	<script>
	function upRow(row){
		document.getElementById(row).style.border="2px #ccc solid";
	}
</script>
</head>

<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<div class="tableBox">
		<form action="update" method="post" enctype="multipart/form-data" >
			<table>
				<tr class="head">
					<th>id</th>
					<th>图片</th>
					<th>名称</th>
					<th>价格</th>
					<th>介绍</th>
					<th>库存</th>
					<th class="rightEnd">类型</th>
				</tr>
				<c:if test="${!empty g }">
				<c:forEach items="${g }" var="gi"  >
					<tr id="${gi.id}">
						<td>
						<input type="number" name="id" value="${gi.id }" class="id">
						<a class="updateBn" onclick="upRow(${gi.id})">修改</a>
						</td>
						<td>
							<img src="http://localhost:8080/cakes_moreTable_SSM/${gi.image }"
							alt="图片" />
							<input type="file" name="pictureFile" multiple="multiple" />
						</td>
						<td><input type="text" name="name" value="${gi.name }"/></td>
						<td><input type="number" name="price" value="${gi.price }"/></td>
						<td><input class="intro" type="text" name="intro" value="${gi.intro}"/></td>
						<td><input type="number" name="stock" value="${gi.stock }"/></td>
						<td class="rightEnd"><input type="number" name="type" value="${gi.type_id}"/></td>
					</tr>
				</c:forEach>
				</c:if>
				<c:if test="${empty g }">
					<tr>
						<td colspan="7" class="rightEnd">沒有找到数据</td>
					</tr>
				</c:if>

			</table>
			<input type="submit" value="提交更改" > 
		</form>
	</div>
</body>
</html>