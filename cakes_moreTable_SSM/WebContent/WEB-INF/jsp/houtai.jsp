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
		body {
			background-color: #ececec;
		}

		* {
			margin: 0;
			padding: 0;
		}

		.dataBox {
			padding-top: 3em;
			width: 65%;
			margin: 0 auto;
			overflow: hidden;
		}

		.goodsBox {
			/* margin-top: 0.5em; */
			float: left;
			/* margin-left: 3em; */
			background-color: #ffffff;
			width: 400px;
			height: 400px;
			overflow: auto;
			border-radius: 12px;
			/* margin-bottom: 88px; */
			/* margin-bottom: 3em; */
			box-shadow: 0 #cccccc;
			-webkit-transition: box-shadow 0.5s;
			/* -webkit-transition: margin-bottom 0.5s; */
			/* position: absolute; */

		}

		.imgbox {
			float: left;
		}

		.goodsBox img {
			height: 150px;
			width: 150px;
		}

		form {
			display: block;
			padding: 1em;
		}

		.dataR {
			float: left;
			font: 1.2em "微软雅黑";
			padding-left: 1em;
			overflow: auto;

		}

		.dataB {
			padding-top: 1.5em;
			clear: both;
		}

		.dataB p {
			font: 1.3em "微软雅黑";
			text-indent: 2em;
		}

		.goodsBox:hover {
			box-shadow: 0px 30px 24px #cfcfcf;
			cursor: pointer;
			/* margin-bottom: 2em; */
			
		}
		.wrapGoods:hover{
			padding-bottom: 2em;
		}
		.wrapGoods{
			width: 400px;
			height: 400px;
			overflow: visible;
			float: left;
			margin-left: 3em;
			margin-bottom: 3em;
			position: relative;
			box-sizing: border-box;
			padding-bottom: 0;
			-webkit-transition: padding-bottom 0.5s;
		}
	</style>
	<script>
		function upRow(row) {
			// if()
			document.getElementById(row).style.border = "3px #e389f3 solid";
			// document.getElementById(row).style.backgroundColor="";
		}
	</script>
</head>

<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<div class="dataBox">
		<c:forEach items="${g }" var="gi">
			<div class="wrapGoods">
				<div class="goodsBox">
					<form action="update">
						<div class="imgbox"><img src="http://localhost:8080/cakes_moreTable_SSM/
				${gi.image }" alt=""></div>
						<div class="dataR">
							<p>名称：${gi.name}</p>
							<p>价格：${gi.price}</p>
							<p>库存：${gi.stock}</p>
							<p>类型：${gi.type_id}</p>
						</div>
						<div class="dataB">
							<p class="intro">${gi.intro}</p>
						</div>
					</form>
				</div>
			</div>
		</c:forEach>
	</div>
</body>

</html>