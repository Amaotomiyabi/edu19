<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>

<!-- start: Meta -->
<meta charset="utf-8" />
<title>学生信息管理系统</title>

<!-- start: Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- end: Mobile Specific -->

<!-- start: CSS -->
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/css/bootstrap-responsive.min.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath }/css/style.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/css/style-responsive.min.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath }/css/retina.css"
	rel="stylesheet" />
<!-- end: CSS -->

<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link id="ie-style" href="css/ie.css" rel="stylesheet">
	<![endif]-->

<!--[if IE 9]>
		<link id="ie9style" href="css/ie9.css" rel="stylesheet">
	<![endif]-->

<!-- start: Favicon and Touch Icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="ico/apple-touch-icon-144-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="ico/apple-touch-icon-114-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="ico/apple-touch-icon-72-precomposed.png" />
<link rel="apple-touch-icon-precomposed"
	href="ico/apple-touch-icon-57-precomposed.png" />
<link rel="shortcut icon" href="ico/favicon.png" />
<!-- end: Favicon and Touch Icons -->

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
	<!-- start: Header -->
	<div class="navbar">
		<div class="navbar-inner" style="background-color: #183C4A;">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
				</a> <a id="main-menu-toggle" class="hidden-phone open"><i
					class="icon-reorder"></i></a>
				<div class="row-fluid">
					<a class="brand span2" href="#" style="background-color: #183C4A;"><span>教务信息管理</span></a>
				</div>
				<!-- start: Header Menu -->
				<div class="nav-no-collapse header-nav">
					<ul class="nav pull-right">
						<!-- start: User Dropdown -->
						<li class="dropdown"><a class="btn account dropdown-toggle"
							data-toggle="dropdown" href="#">
								<div class="user">
									<span class="hello">欢迎!</span> <span class="name"
										id="user_name">${sessionScope.USER_SESSION }</span>
								</div>
						</a>
							<ul class="dropdown-menu">
								<li class="dropdown-menu-title"></li>
								<li><a href="#" id="personal_info_u"><i
										class="icon-user"></i>个人信息</a></li>
								<li><a href="${pageContext.request.contextPath }/logout"><i
										class="icon-off"></i>注销</a></li>
							</ul></li>
						<!-- end: User Dropdown -->
					</ul>
				</div>
				<!-- end: Header Menu -->
			</div>
		</div>
	</div>
	<script
		src="${pageContext.request.contextPath }/js/jquery-1.10.2.min.js"></script>
	<script>
		var u_per_level = '${sessionScope.LEVEL_SESSION}';
		var u_id = '${sessionScope.ID_SESSION}';
		if (u_per_level == '04') {
			$("#personal_info_u").attr("href",
					"${pageContext.request.contextPath}/admin/info/" + u_id);
		}
		if (u_per_level == '03') {
			$("#personal_info_u").attr("href",
					"${pageContext.request.contextPath}/admin/info/" + u_id);
		}
		if (u_per_level == '02') {
			$("#personal_info_u").attr("href",
					"${pageContext.request.contextPath}/teacher/info/" + u_id);
		}
		if (u_per_level == '01') {
			$("#personal_info_u").attr("href",
					"${pageContext.request.contextPath}/student/info/" + u_id);
		}
	</script>
	<!-- start: Header -->


	<!-- end: Main Menu -->
</body>
</html>