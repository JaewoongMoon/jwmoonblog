<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta charset="utf-8">
<title><decorator:title/></title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/base.v01.css">
<decorator:head/>
</head>

<body>
<header>
	<h1><a href="#">문재웅의 블로그</a></h1>
</header>
<nav class="nav1">
		<ul>
			<li><a href="#">웹 취약점(3)</a></li>
			<li><a href="#">클로저 (4)</a></li>
			<li>
				<ul>
					<li>SQL 인젝션 </li>
					
				</ul>
			</li>
		</ul>
	</nav>
	<nav class="nav2">
		<ul>
			<li><a href="#">웹 취약점(3)</a></li>
			<li><a href="#">클로저 (4)</a></li>
			<li>
				<ul>
					<li>SQL 인젝션 </li>
					
				</ul>
			</li>
		</ul>
	</nav>
<decorator:body/>
<footer>Copyright © 2016 All Rights</footer>
</body>
</html>