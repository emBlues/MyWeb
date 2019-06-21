<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<style>

		 ul.top {position:fixed;width:1334px;list-style-type: none;margin: 0;padding: 0;overflow: hidden;background-color: #333;}
		.top> li { float: left;}
		.top>li a {display: block; color: white; text-align: center; padding: 14px 16px; text-decoration: none;}
	 	.top>li a:hover:not(.active) {background-color: #111;}
	 	.active {background-color: #4CAF50;}
	 		#u{list-style: none;background: silver;width: 600px;margin: 0px;padding: 0px; background-image: url("pic/蓝色城市.jpg")}
			#u li{background: slategray;margin: 1px;width: inherit;height: 30px;line-height: 30px;text-align: center;padding:100px}
			#u li a{color: white; text-decoration:none}
		</style>
	</head>
	<body>
		<%@include file="ed-head.jsp"%>
		<ul id="u">
			<c:forEach items="${people}" var="c" varStatus="st">
				<li><a href="ed-userUI?ID=${c.getID() }">${c.getNickname() }</a>的消息<a href="ed-newsFrame?id=${c.getID() }">点击进入对话框</a></li>
			</c:forEach>
		</ul>
	</body>
</html>