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
			width: 90%;
			margin: 0 auto;
			overflow: visible;

		}

		.goodsBox {
			/* margin-top: 0.5em; */
			float: left;
			/* margin-left: 3em; */
			background-color: #ffffff;
			width: 300px;
			height: 300px;
			overflow: auto;
			border-radius: 12px;
			padding: 1em;
			/* margin-bottom: 88px; */
			/* margin-bottom: 3em; */
			box-shadow: 0 #cccccc;
			-webkit-transition: box-shadow 0.5s;
			/* -webkit-transition: margin-bottom 0.5s; */
			position: relative;

		}

		.imgbox {
			float: left;
			width: 100px;
			overflow: hidden;
		}

		.goodsBox img {
			height: 100px;
			width: 100px;
		}

		form {
			/* display: block;
			padding: 1em; */
		}

		.dataR {
			float: left;
			font: 1em "微软雅黑";
			padding-left: 2em;
			overflow: auto;

		}

		.dataB {
			padding-top: 1.5em;
			clear: both;
		}

		.dataB p {
			font: 0.9em "微软雅黑";
			color: rgb(119, 119, 119);
			text-indent: 2em;
		}

		.goodsBox:hover {
			box-shadow: 0px 30px 24px #cecece;
			cursor: pointer;
			/* margin-bottom: 2em; */

		}

		.wrapGoods:hover {
			padding-top: 0em;
		}

		.wrapGoods {
			width: 320px;
			height: 320px;
			overflow: visible;
			float: left;
			margin-left: 1em;
			margin-bottom: 1em;
			position: relative;
			box-sizing: border-box;
			padding-top: 1em;
			-webkit-transition: padding 0.5s;
		}

		.groundBoxs {
			position: absolute;
			width: 300px;
			height: 300px;
			display: block;
			background-color: rgba(250, 250, 250, 0.657);
			/* visibility: hidden; */
			z-index:0;
			border-radius: 12px;
		}

		.mlefts,
		.delete {
			display: block;
			text-decoration: none;
			padding: 0em;
			color: black;
			font-size: 1em;
			float: left;
			border-radius: 50%;
			background-color: white;
			margin-left: 1em;
			box-sizing: border-box;
			margin-top: 120px;
			box-shadow: 0 4px 6px rgb(224, 223, 223);
			border: 2px #9c9c9c;

			/* -webkit-animation: tanchu 0.5s forwards; */
		}

		.mlefts:hover {
			text-decoration: none;
			color: black;
		}

		.delete:hover {
			color: white;
			text-decoration: none;
		}

		.mlefts {
			margin-left: 60px;

		}

		.delete {
			background-color: rgb(245, 114, 114);
			color: white;
		}

		@-webkit-keyframes tanchu {
			from {
				padding: 0em;
			}

			to {
				padding: 2em;
			}
		}

		@-webkit-keyframes tanhui {
			from {
				padding: 2em;
			}

			to {
				padding: 0em;
			}
		}

		#window {
			display: none;
			position: fixed;
			top: 15%;
			left: 40%;
			/* width: 500px;
			height: 200px; */
			padding: 10px;
			background-color: #f1eeee;
			border-radius: 12px;
			box-shadow: 0px 15px 20px #b9b9b9a2;
			z-index: 1;
		}

		#window p {
			font: 1.4em "微软雅黑";
			color: black;
		}

		#window a {
			text-decoration: none;
			color: black;
			display: block;
			padding: 10px;
			font-size: 1em;
			float: right;
			margin-right: 2em;
			margin-top: 30px;
			background-color: rgb(214, 214, 214);
			border-radius: 6px;
		}

		#window a:hover {
			color: black;
			text-decoration: none;
		}

		@-webkit-keyframes windowOpenMove {
			from {
				padding: 10px;
				top: 15%;
			}

			to {
				padding: 20px;
				top: 20%;
			}
		}

		.updateMes {
			display: none;
		}

		input {
			padding: 0 3px;

		}

		input[input=file] {
			width: 100px;
		}

		input[type=text] {
			width: 80px;
		}

		input[type=number] {
			width: 70px;
		}

		input[name=intro] {
			width: 250px;
			height: 150px;
		}

		@-webkit-keyframes goodsBoxMoveUp {
			from {
				height: 300px;
				width: 300px;
				background-color: white;
			}

			to {
				height: 350px;
				width: 350px;
				background-color: rgb(230, 230, 230);
			}
		}

		@-webkit-keyframes goodsBoxMoveDown {
			from {
				height: 350px;
				width: 350px;
				background-color: rgb(230, 230, 230);
			}

			to {
				height: 300px;
				width: 300px;
				background-color: white;
				
			}
		}

		.updateBn {
			position: absolute;
			display: none;
			text-decoration: none;
			background-color: #69c6fc;
			color: rgb(255, 255, 255);
			top: -70px;
			padding: 0px;
			/* width: 60px;
			height: 60px; */
			border-radius: 45px;
			margin-left: 2em;
			font-size: 1em;
			border: none;
		}
		.updateBnL{
			
			left: 40px;
			/* box-shadow: 0px 20px 20px #c0e8ff; */
			
		}
		.updateBnR{
			
			left: 150px;
			/* box-shadow: 0px 10px 10px #c0e8ff; */
			
		}
		.updateBn:hover {
			text-decoration: none;
			color: rgb(255, 255, 255);
		}

		@-webkit-keyframes updateBnMoveOn{
			from{
				padding: 0px;
				box-shadow: 0px;
			}
			to{
				padding: 20px;
				box-shadow: 0px 10px 10px #c0e8ff;
			}
		}
		@-webkit-keyframes updateBnMoveOff{
			from{
				padding: 20px;
				box-shadow: 0px 10px 10px #c0e8ff;
			}
			to{
				padding: 0px;
				box-shadow: 0px;
				
			}
		}
		/* @-webkit-keyframes show{
			from{
				visibility: visible;
			}
			to{
				visibility: hidden;
			}
		} */
	</style>
	<script>
		// function upRow(row) {
		// 	// if()
		// 	document.getElementById(row).style.border = "3px #e389f3 solid";
		// 	// document.getElementById(row).style.backgroundColor="";
		// }
		var click = 0;
		var deleteId;
		var ifUpdating = false;
		function showbn(item) {
			click = click + 1;
			// // 弹回按钮
			if (click % 2 == 0) {

				document.getElementById("mleft" + item).style.webkitAnimation = "tanhui 0.5s forwards";
				document.getElementById("delete" + item).style.webkitAnimation = "tanhui 0.5s forwards";
				document.getElementById("groundBox" + item).style.display = "none";
				document.getElementById("groundBox" + item).style.zIndex="0";
				// // 弹出按钮
			} else {
				if (ifUpdating == false) {
					document.getElementById("groundBox" + item).style.zIndex="1";
					
					document.getElementById("groundBox" + item).style.display = "block";
					document.getElementById("mleft" + item).style.webkitAnimation = "tanchu 0.5s forwards";
					document.getElementById("delete" + item).style.webkitAnimation = "tanchu 0.5s forwards";
					ifUpdating == true;
					// document.getElementById("groundBox"+item).style.display="block";
				}
			}

		}

		function winOpen(id) {
			deleteId = id;
			document.getElementById("window").style.display = "block";
			document.getElementById("window").style.webkitAnimation = "windowOpenMove 0.3s forwards";
		}
		function winShut() {
			document.getElementById("window").style.display = "none";
			document.getElementById("window").style.padding = "10px";
			document.getElementById("window").style.top = "15%";

		}
		function deletes() {
			// open("deleteGoods?id="+id);
			window.location.href = "deleteGoods?id=" + deleteId; //在当前窗口中打开链接
		}

		//当点击修改按钮时
		function canUpdate(id) {
			ifUpdating = true;
			//隐藏用于显示信息的p标签
			document.getElementById("message_name" + id).style.display = "none";
			document.getElementById("message_price" + id).style.display = "none";
			document.getElementById("message_stock" + id).style.display = "none";
			document.getElementById("message_intro" + id).style.display = "none";
			document.getElementById("message_type" + id).style.display = "none";

			//显示可编辑input
			document.getElementById("updateMes_name" + id).style.display = "block";
			document.getElementById("updateMes_price" + id).style.display = "block";
			document.getElementById("updateMes_stock" + id).style.display = "block";
			document.getElementById("updateMes_intro" + id).style.display = "block";
			document.getElementById("updateMes_type" + id).style.display = "block";

			document.getElementById("groundBox" + id).style.display = "none";

			//信息盒子的反应
			document.getElementById("goodBox" + id).style.webkitAnimation = "goodsBoxMoveUp 0.5s forwards";
			document.getElementById("goodBox" + id).style.zIndex = "1";
			document.getElementById("goodBox" + id).style.border=" 2px solid #56cbfa";

			// 弹出确定修改和去修修改按钮
			document.getElementById("sureUpdate"+id).style.display="block";
			document.getElementById("cancleUpdate"+id).style.display="block";

			document.getElementById("sureUpdate"+id).style.webkitAnimation="updateBnMoveOn 0.5s forwards";
			document.getElementById("cancleUpdate"+id).style.webkitAnimation="updateBnMoveOn 0.5s forwards";

			// document.getElementsByClassName("updateMes"+id).style.display="block";
		}

		function cancleUpdate(id){
			ifUpdating = false;
			// // 隐藏input
			// document.getElementById("message_name" + id).style.display = "block";
			// document.getElementById("message_price" + id).style.display = "block";
			// document.getElementById("message_stock" + id).style.display = "block";
			// document.getElementById("message_intro" + id).style.display = "block";
			// document.getElementById("message_type" + id).style.display = "block";
			// //显示用于显示信息的P
			// document.getElementById("updateMes_name" + id).style.display = "none";
			// document.getElementById("updateMes_price" + id).style.display = "none";
			// document.getElementById("updateMes_stock" + id).style.display = "none";
			// document.getElementById("updateMes_intro" + id).style.display = "none";
			// document.getElementById("updateMes_type" + id).style.display = "none";

			// document.getElementById("groundBox" + id).style.display = "block";

			//信息盒子的反应
			document.getElementById("goodBox" + id).style.webkitAnimation = "goodsBoxMoveDown 0.5s forwards";
			// document.getElementById("goodBox" + id).style.zIndex = "0";
			// document.getElementById("goodBox" + id).style.border="none";

			// // 弹出确定修改和去修修改按钮
			// document.getElementById("sureUpdate"+id).style.display="none";
			// document.getElementById("cancleUpdate"+id).style.display="none";

			// document.getElementById("sureUpdate"+id).style.webkitAnimation="updateBnMoveOff 0.5s forwards";
			// document.getElementById("cancleUpdate"+id).style.webkitAnimation="updateBnMoveOff 0.5s forwards";
		}
	</script>
</head>

<body>
	<div id="window">
		<p>您确定要删除这件商品吗?</p>
		<a href="#" onclick="deletes()">确定</a>
		<a href="#" onclick="winShut()">取消</a>
	</div>
	<jsp:include page="nav.jsp"></jsp:include>
	<div class="dataBox">

		<c:forEach items="${g }" var="gi">
			<div class="wrapGoods" onclick="showbn(${gi.id})">
				<!-- 弹出按钮所属盒子 -->
				<div id="groundBox${gi.id}" class="groundBoxs">
					<a href="#" id="mleft${gi.id}" class="mlefts" onclick="canUpdate(${gi.id})">修改</a>
					<a href="#" id="delete${gi.id}" class="delete" onclick="winOpen(${gi.id})">删除</a>
				</div>
				<!-- 商品信息所属盒子 -->

				<form action="update">
					<!-- 确定修改和取消修改按钮 -->
					<input type="submit" id="sureUpdate${gi.id}" class="updateBn updateBnL" value="确定">
					<a href="" id="cancleUpdate${gi.id}" class="updateBn updateBnR" onclick="cancleUpdate(${gi.id})">取消</a>
										
					<div class="goodsBox" id="goodBox${gi.id}">																	

						<div class="imgbox"><img src="http://localhost:8080/cakes_moreTable_SSM/
						${gi.image }" alt="">
							<p class="updateMes "> <input type="file" name="picture" id="updateMes_file${gi.id} " /></p>
						</div>
						<div class="dataR">
							<p id="message_name${gi.id}">名称：${gi.name}</p>
							<p class="updateMes" id="updateMes_name${gi.id}">名称：<input type="text" name="name"
									value="${gi.name}"></p>
							<p id="message_price${gi.id}">价格：${gi.price}</p>
							<p class="updateMes" id="updateMes_price${gi.id}">价格：<input type="number" name="price"
									value="${gi.price}"></p>
							<p id="message_stock${gi.id}">库存：${gi.stock}</p>
							<p class="updateMes" id="updateMes_stock${gi.id}">库存：<input type="number" name="stock"
									value="${gi.stock}"></p>
							<p id="message_type${gi.id}">类型：${gi.type_id}</p>
							<p class="updateMes" id="updateMes_type${gi.id}">类型：<input type="number" name="type_id"
									value="${gi.type_id}"></p>
						</div>
						<div class="dataB">
							<p class="intro " id="message_intro${gi.id}">${gi.intro}</p>
							<p class="updateMes" id="updateMes_intro${gi.id}"><input type="text" name="intro"
									value="${gi.intro}" class="inputIntro"></p>
						</div>

					</div>
					<!-- 商品信息所属盒子 结束-->
				</form>
			</div>
		</c:forEach>
	</div>
</body>

</html>