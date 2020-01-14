<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>登录</title>
<script src="js/jquery-1.11.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!-- 引入 Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style>
        body{
            background-color: #ececec;
        }
        #login{
            background-color: #e9e9e9;
        }
        #index,.navbar-header{
            background-color:#F8F8F8;
        }

        .loginBox{
            width: 220px;
            margin: 100px auto;
            background-color: white;
            padding: 20px;
        }
        .loginBox input[type=submit]{
            display: block;
            width: 100px;
            background-color: #ececec;
            color: black;
            text-align: center;
            border: none;
            margin-top: 20px;
            border-radius: 8px;
            padding: 10px 0px;
            font-size: 1em;
        }
    </style>
</head>
<body>
    <jsp:include page="nav.jsp"></jsp:include>
    <div class="loginBox">
        <p>用户名</p>
        <input type="text" name="name">
        <p>密码</p>
        <input type="password" name="password">
        <input type="submit" value="确定">

    </div>
</body>
</html>