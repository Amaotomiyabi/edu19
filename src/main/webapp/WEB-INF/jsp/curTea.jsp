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

			<!-- start: Main Menu -->
			<jsp:include page="/WEB-INF/jsp/leftMenu.jsp" flush="true"></jsp:include>
			<!-- end: Main Menu -->

			<!-- start: Content -->
			<div id="content" class="span10">
				<div class="row-fluid">
					<div class="box span12">
						<div class="box-header" data-original-title="">
							<h2>
								<i class="icon-user-md"></i><span class="break"></span>课程教师表
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
										<th>课程老师编号</th>
										<th>课程老师姓名</th>
										<th>Actions</th>
										<th>选课学生</th>
										<th>选课班级</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${curTeaList }" var="curTeaOne">
										<tr>
											<td>${curTeaOne.teacher_id }</td>
											<td class="center">${curTeaOne.teacher_name }</td>
											<td class="center"><a class="btn btn-danger" href="#"
												data-toggle="modal"
												data-target="#deleteCurTeaOne${curTeaOne.teacher_id}"
												title="删除"> <i class="icon-trash "></i>
											</a>
												<div class="modal fade" tabindex="-1" role="dialog"
													id="deleteCurTeaOne${curTeaOne.teacher_id}"
													style="display: none">
													>
													<div class="modal-dialog">
														<div class="modal-content">
															<div class="modal-header">
																<button class="close" type="button" data-dismiss="modal"
																	aria-label="Close">
																	<span aria-hidden="true">&times;</span>
																</button>
																<h4 class="modal-title">删除</h4>
															</div>
															<div class="modal-body">
																<h3>确定要删除吗？</h3>
															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-default"
																	data-dismiss="modal">取消</button>
																<button type="button" class="btn btn-primary"
																	id="delete_curTea_but1"
																	onClick="delete_curTea(${curTeaOne.teacher_id},${curId })">确认</button>
															</div>
														</div>
													</div>
												</div></td>
											<td class="center"><a class="btn btn-success"
												href="${pageContext.request.contextPath }/course/teacher/${curTeaOne.cur_teacher_info_id}/students"
												title="查看课程对应学生"> <i class="icon-user "></i>
											</a></td>
											<td class="center"><a class="btn btn-success"
												href="${pageContext.request.contextPath }/course/teacher/${curTeaOne.cur_teacher_info_id}/classrooms"
												title="查看课程对应班级"> <i class="icon-group "></i>
											</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="row-fluid">
					<div class="box span12">
						<div class="box-header" data-original-title="">
							<h2>
								<i class="icon-user-md"></i><span class="break"></span>教师表
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
										<th>老师编号</th>
										<th>老师姓名</th>
										<th>联系电话</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${teaList }" var="teaOne">
										<tr>
											<td>${teaOne.teacher_id }</td>
											<td class="center">${teaOne.teacher_name }</td>
											<td class="center">${teaOne.teacher_phone }</td>
											<td class="center"><a class="btn btn-info" href="#"
												data-toggle="modal"
												data-target="#addOneCurTea${teaOne.teacher_id }"
												title="添加教师"> <i class=" icon-ok "></i>
											</a>
												<div class="modal fade" tabindex="-1" role="dialog"
													id="addOneCurTea${teaOne.teacher_id }" tabindex="-1"
													style="display: none">
													<div class="modal-dialog">
														<div class="modal-content">
															<div class="modal-header">
																<button class="close" type="button" data-dismiss="modal"
																	aria-label="Close">
																	<span aria-hidden="true">&times;</span>
																</button>
																<h4 class="modal-title">添加</h4>
															</div>
															<div class="modal-body">
																<h3>确定要添加该教师吗？</h3>
															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-default"
																	data-dismiss="modal">取消</button>
																<button type="button" class="btn btn-primary"
																	id="add_curTea_but1"
																	onClick="add_curTea(${teaOne.teacher_id},${curId })">确认</button>
															</div>
														</div>
													</div>
												</div></td>

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
		src="${pageContext.request.contextPath }/js/fullcalendar.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.dataTables.min.js"></script>
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
	<script>
	function delete_curTea(teaId,curId)
	{
 		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath}/course/teacher",
			data:{_method:"DELETE",curId:curId,teaId:teaId},
			success:function(data){
				if(data=="OK")
				window.location.reload();
			}
		}); 
	}
	function add_curTea(teaId,curId)
	{
		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath}/course/teacher",
			data:{"curId":curId,"teaId":teaId},
			success:function(data){
				if(data=="OK")
				window.location.reload();
			}
		});
		
	}
	</script>
</body>
</html>