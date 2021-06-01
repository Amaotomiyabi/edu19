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
	<div id="sidebar-left" class="span2">

		<div class="nav-collapse sidebar-nav">
			<ul class="nav nav-tabs nav-stacked main-menu">
				<li><a href="${pageContext.request.contextPath }/index"><i
						class="icon-bar-chart"></i><span class="hidden-tablet">首页</span></a></li>
				<li><a class="dropmenu" href="#"><i
						class="icon-indent-right"></i><span class="hidden-tablet">课表</span></a>
					<ul>
						<li id="cur_adm_li1"><a class="submenu"
							href="${pageContext.request.contextPath }/allCur"><i
								class="icon-th-list"></i><span class="hidden-tablet">所有课程</span></a></li>
						<li id="cur_tea_li1"><a class="submenu"
							href="${pageContext.request.contextPath }/teacher/myCourses/${sessionScope.ID_SESSION}"><i
								class="icon-th-list"></i><span class="hidden-tablet">任教课程</span></a></li>
						<li id="mark_adm_li1"><a class="submenu"
							href="${pageContext.request.contextPath }/markTables"><i
								class="icon-list"></i><span class="hidden-tablet">成绩表</span></a></li>
						<li id="mark_tea_li1"><a class="submenu"
							href="${pageContext.request.contextPath }/teacher/myMarkTables/${sessionScope.ID_SESSION}"><i
								class="icon-list"></i><span class="hidden-tablet">任课成绩表</span></a></li>
						<li id="cur_stu_li1"><a class="submenu"
							href="${pageContext.request.contextPath }/student/myCourses/${sessionScope.ID_SESSION}"><i
								class="icon-list"></i><span class="hidden-tablet">课表</span></a></li>
						<li id="mark_stu_li1"><a class="submenu"
							href="${pageContext.request.contextPath }/student/myMarkTables/${sessionScope.ID_SESSION}"><i
								class="icon-list"></i><span class="hidden-tablet">成绩表</span></a></li>
					</ul></li>

				<li><a href="#" id="personal_info"><i class="icon-edit"></i><span
						class="hidden-tablet">个人信息</span></a></li>
				<li id="class_list_1"><a href="${pageContext.request.contextPath }/classrooms"><i
						class="icon-group"></i><span class="hidden-tablet">班级表</span></a></li>
				<li id="user_list_1"><a class="dropmenu" href="#"><i
						class="icon-indent-right"></i><span class="hidden-tablet">成员表</span></a>
					<ul id="menu_2">
						<li id="adm_list_1"><a class="submenu"
							href="${pageContext.request.contextPath }/adminList"><i
								class="icon-user-md"></i><span class="hidden-tablet">管理员</span></a></li>
						<li id="tea_list_1"><a class="submenu"
							href="${pageContext.request.contextPath }/teacherList"><i
								class="icon-user-md"></i><span class="hidden-tablet">老师</span></a></li>
						<li id="stu_list_1"><a class="submenu"
							href="${pageContext.request.contextPath }/studentList"><i
								class="icon-user"></i><span class="hidden-tablet">学生</span></a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	<script
		src="${pageContext.request.contextPath }/js/jquery-1.10.2.min.js"></script>
	<!-- start: Header -->
	<script>
		var u_per_level = '${sessionScope.LEVEL_SESSION}';
		var u_id = '${sessionScope.ID_SESSION}';
		if (u_per_level == '04') {
			$("#personal_info").attr("href",
					"${pageContext.request.contextPath}/admin/info/" + u_id);
			$("#cur_tea_li1").remove();
			$("#cur_stu_li1").remove();
			$("#mark_tea_li1").remove();
			$("#mark_stu_li1").remove();
		}
		if (u_per_level == '03') {
			$("#personal_info").attr("href",
					"${pageContext.request.contextPath}/admin/info/" + u_id);
			$("#cur_tea_li1").remove();
			$("#cur_stu_li1").remove();
			$("#mark_tea_li1").remove();
			$("#mark_stu_li1").remove();
			$("#adm_list_1").remove();
		}
		if (u_per_level == '02') {
			$("#personal_info").attr("href",
					"${pageContext.request.contextPath}/teacher/info/" + u_id);
			$("#cur_adm_li1").remove();
			$("#cur_stu_li1").remove();
			$("#mark_adm_li1").remove();
			$("#mark_stu_li1").remove();
			$("#adm_list_1").remove();
			$("#tea_list_1").remove();
		}
		if (u_per_level == '01') {
			$("#personal_info").attr("href",
					"${pageContext.request.contextPath}/student/info/" + u_id);
			$("#cur_adm_li1").remove();
			$("#cur_tea_li1").remove();
			$("#mark_adm_li1").remove();
			$("#mark_tea_li1").remove();
			$("#user_list_1").remove();
			$("#class_list_1").remove();
		}
	</script>

	<!-- end: Main Menu -->
</body>
</html>