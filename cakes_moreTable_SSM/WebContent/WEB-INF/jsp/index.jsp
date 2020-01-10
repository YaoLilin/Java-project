<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>蛋糕店</title>

	<script src="js/jquery-1.11.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!-- 引入 Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<style type="text/css">
		/*为页面中以下元素设置字体为Microsoft YaHei*/
		body,
		h3,
		h6 {
			font-family: Microsoft YaHei
		}

		/*热卖商品*/
		.hot h3 {
			margin-top: -20px;
			color: #1A1A1A;
			font-size: 1.5em;
			font-weight: 600;
			margin: 1em 0 1em;
			padding: 0 0 0.5em;
			border-bottom: 2px solid #eee;
		}

		.hot p {
			color: #5fa022;
			;
			font-size: 1em;
			font-weight: 400;
			line-height: 1.8em;
			margin: 1em 0;
		}

		.hot {
			padding: 30px 0;
			border: 1px solid #eee;
			margin: 0 0;
		}

		.hot h6 {
			color: #C15162;
			font-size: 1.5em;
			font-weight: 400;
			margin: 0.3em 0;
		}

		a.morebtn {
			display: block;
			font-size: 1em;
			color: #FFF;
			text-decoration: none;
			/*去掉a链接下划线*/
			font-weight: 400;
			background: #D96B66;
			padding: 10px 18px;
			transition: 0.5s all ease;
			-webkit-transition: 0.5s all ease;
			border-radius: 3px;
			-webkit-border-radius: 3px;
		}

		a.morebtn:hover {
			background: #5fa022;
		}

		@media (max-width: 1024px) {
			a.morebtn {
				max-width: 410px;
				/*当视口小于1024px时按钮的最大宽度*/
			}
		}
		.glyphicon{
			height: 140px;
			overflow: auto;
		}
		.seachdiv{
			padding-left: 20%;
			font: 1.2em "微软雅黑";
			padding-bottom: 1.5em;
		}
		.message{
			padding-left: 20%;
			color: rgb(10, 154, 190);
			font-size: 2em;
		}
	</style>
</head>

<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<div class="seachdiv">
		<form action="search">
			搜索：<input type="text" name="value">
			<input type="submit" value="确定">
		</form>
	</div>
	<p class="message">${message}</p>
	<div class="hot">
		<div class="container">
			<c:forEach items="${g }" var="g">

				<div class="col-md-4 ">
					<h3>${g.name }</h3>
					<img src="http://localhost:8080/cakes_moreTable_SSM/${g.image }" class="img-responsive" alt="">
					<div>
						<p class="glyphicon glyphicon-thumbs-up">${g.intro } </p>
						<div class="cur">
							<span><a class="morebtn" href="#">添加到购物车</a></span>
							<span>
								<h6>一口价￥${g.price }</h6>
							</span>
						</div>
					</div>
				</div>

			</c:forEach>
		</div>
	</div>
</body>

</html>