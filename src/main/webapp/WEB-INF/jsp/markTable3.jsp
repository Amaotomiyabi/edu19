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
	href="${pageContext.request.contextPath }/ico/apple-touch-icon-144-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="${pageContext.request.contextPath }/ico/apple-touch-icon-114-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="${pageContext.request.contextPath }/ico/apple-touch-icon-72-precomposed.png" />
<link rel="apple-touch-icon-precomposed"
	href="${pageContext.request.contextPath }/ico/apple-touch-icon-57-precomposed.png" />
<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/ico/favicon.png" />
<!-- end: Favicon and Touch Icons -->

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>
	<!-- start: Header -->
	<jsp:include page="/WEB-INF/jsp/header.jsp" flush="true"></jsp:include>
	<!-- start: Header -->

	<div class="container-fluid-full">
		<div class="row-fluid">
			<jsp:include page="/WEB-INF/jsp/leftMenu.jsp" flush="true"></jsp:include>
			<!-- start: Main Menu -->

			<!-- end: Main Menu -->

			<!-- start: Content -->
			<div id="content" class="span10">
				<div class="row-fluid">
					<div class="box span12">
						<div class="box-header" data-original-title="">
							<h2>
								<i class="icon-user-md"></i><span class="break"></span>成绩表
							</h2>
							<div class="box-icon">
								<a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
								<a href="#" class="btn-close"><i class="icon-remove"></i></a>
							</div>
						</div>
						<div class="box-content">
							<table
								class="table table-striped table-bordered bootstrap-datatable datatable">
								<thead>
									<tr>
										<th>任课老师姓名</th>
										<th>课程识别号</th>
										<th>课程名称</th>
										<th>总学分</th>
										<th>学分</th>
										<th>总绩点</th>
										<th>绩点</th>
										<th>总平时成绩</th>
										<th>平时成绩</th>
										<th>总测试成绩</th>
										<th>测试成绩</th>
										<th>总分</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${mtList }" var="mt">
										<tr>
											<td>${mt.course.teacher.teacher_name }</td>
											<td class="center">${mt.course.cur_teacher_id}</td>
											<td class="center">${mt.course.cur_name }</td>
											<td class="center">${mt.course.cur_mark }</td>
											<td class="center">${mt.m_mark }</td>
											<td class="center">${mt.course.cur_grade_point }</td>
											<td class="center">${mt.m_grade_point }</td>
											<td class="center">${mt.course.cur_regular_grade }</td>
											<td class="center">${mt.m_regular_grade }</td>
											<td class="center">${mt.course.cur_exam_mark }</td>
											<td class="center">${mt.m_exam_mark }</td>
											<td class="center">${mt.m_total_mark }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<footer>
			<p>
				<span style="text-align: left; float: left">毕业设计</span>
			</p>
		</footer>
	</div>
	<!--/.fluid-container-->

	<!-- start: JavaScript-->
	<script
		src="${pageContext.request.contextPath }/js/jquery-1.10.2.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery-migrate-1.2.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery-ui-1.10.3.custom.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.ui.touch-punch.js"></script>
	<script src="${pageContext.request.contextPath }/js/modernizr.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.cookie.js"></script>
	<script
		src='${pageContext.request.contextPath }/js/fullcalendar.min.js'></script>
	<script
		src='${pageContext.request.contextPath }/js/jquery.dataTables.min.js'></script>
	<script src="${pageContext.request.contextPath }/js/excanvas.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.flot.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.flot.pie.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.flot.stack.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.flot.resize.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.flot.time.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.chosen.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.uniform.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.cleditor.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.noty.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.elfinder.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.raty.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.iphone.toggle.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.uploadify-3.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.gritter.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.imagesloaded.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.masonry.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.knob.modified.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.sparkline.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/counter.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/raphael.2.1.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/justgage.1.0.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.autosize.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/retina.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.placeholder.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/wizard.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/core.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/charts.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/custom.min.js"></script>
	<!-- end: JavaScript-->
</body>
</html>