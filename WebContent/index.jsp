<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>网络信息管理中心--首页</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/pintuer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/admin.css">
<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
</head>
<body style="background-color: #f2f9fd;">
	<div class="header bg-main">
		<div class="logo margin-big-left fadein-top">
			<h1>
				<img src="${pageContext.request.contextPath }/images/tit.png"
					class="radius-circle rotate-hover" height="50" alt="" />
				太原工业学院网络与信息中心技术支持管理平台
			</h1>
		</div>
		<div class="head-l">
			<%-- <a class="button button-little bg-green" href="${pageContext.request.contextPath }/manager/toin" target="_blank">
  <span class="icon-home"></span> 前台首页</a> &nbsp;&nbsp; --%>
			<a class="button button-little bg-blue"
				href="${pageContext.request.contextPath }/login.jsp"> <span
				class="icon-power-off"></span> 退出登录
			</a> <a class="bu"> <span style="font-size: 22px">
					欢迎：${loginmanager.managerName} </span>
			</a>
		</div>
	</div>
	<div class="leftnav">
		<div class="leftnav-title">
			<strong><span class="icon-list"></span>菜单列表</strong>
		</div>
		<h2>
			<span class="icon-pencil-square-o"></span>业务管理
		</h2>
		<ul style="display: block">
			<li><a
				href="${pageContext.request.contextPath }/workManager/toUnFinish"
				target="right"><span class="icon-caret-right"></span>待办理业务</a></li>
			<li><a
				href="${pageContext.request.contextPath }/workManager/toFinish"
				target="right"><span class="icon-caret-right"></span>已完成业务</a></li>
			<li><a
				href="${pageContext.request.contextPath }/worklog/toworklog"
				target="right"><span class="icon-caret-right"></span>业务日志记录</a></li>
			<li><a
				href="${pageContext.request.contextPath }/assignManager/toAssign"
				target="right"><span class="icon-caret-right"></span>业务指派</a></li>
		</ul>
		<h2>
			<span class="icon-pencil-square-o"></span>公告管理
		</h2>
		<ul style="display: block">
			<li><a
				href="${pageContext.request.contextPath }/suggest/toshowsuggest"
				target="right"><span class="icon-caret-right"></span>留言管理</a></li>
		</ul>
		<h2>
			<span class="icon-user"></span>微信用户管理
		</h2>
		<ul style="display: block" id="show">
			<li><a
				href="${pageContext.request.contextPath }/userManager/toUserList"
				target="right"><span class="icon-caret-right"></span>微信用户管理</a></li>
		</ul>
		<h2>
			<span class="icon-user"></span>我的信息
		</h2>
		<ul id="show">
			<li><a href="${pageContext.request.contextPath }/manager/toMe"
				target="right"><span class="icon-caret-right"></span>初始化信息</a></li>
		</ul>
	</div>
	<script type="text/javascript">
		$(function() {
			$(".leftnav h2").click(function() {
				$(this).next().slideToggle(200);
				$(this).toggleClass("on");
			})
			$(".leftnav ul li a").click(function() {
				$("#a_leader_txt").text($(this).text());
				$(".leftnav ul li a").removeClass("on");
				$(this).addClass("on");
			})
		});
	</script>
	<ul class="bread">
		<!-- <li><a href="{:U('Index/info')}" target="right" class="icon-home">
				首页</a></li> -->
		<li><a href="##" id="a_leader_txt">网站信息</a></li>
	</ul>
	<div class="admin">
		<iframe scrolling="auto" rameborder="0"
			src="${pageContext.request.contextPath}/workManager/toUnFinish"
			name="right" width="100%" height="100%"></iframe>
	</div>
</body>
</html>