<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

	<style>

	 nav{
		padding-left: 20%;
		
	} 
	.navbar-header,li,.navbar-brand{
		padding: 0.5em 1em;
		font-size: 1.3em;
	}
	.dropdown-toggle{
		font-size: 1.3em;
	}
	.selected{
		background: #e9e9e9;
	}
	.navbar-header:hover,.dropdown:hover{
		background: #e9e9e9;
	
	}
	
</style>

</head>
<body>
<script type="text/javascript">
</script>
<nav class="navbar navbar-default " role="navigation">
		<div class="container-fluid hover">
			<div class="navbar-header selected" >
				<a class="navbar-brand " href="index">首页</a>
			</div>
			<div>
				<ul class="nav navbar-nav">	
					<li class="dropdown" id="dropdown">
						<a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> 热销 <b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li><a href="types?id=1">冰淇淋</a></li>
							<li><a href="types?id=2">零食系列</a></li>
							<li><a href="types?id=5"> 经典系列</a></li>
							<li><a href="types?id=3"> 儿童系列</a></li>
							<li><a href="types?id=4"> 法式系列</a></li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="navbar-header" >
				<a class="navbar-brand" href="#" id="s">注销</a>
			</div>
			<div class="navbar-header">
				<a class="navbar-brand" href="#">登陆</a>
			</div>
			<div class="navbar-header">
				<a class="navbar-brand" href="houtai">后台管理</a>
			</div>
		</div>
	</nav>
</body>
</html>