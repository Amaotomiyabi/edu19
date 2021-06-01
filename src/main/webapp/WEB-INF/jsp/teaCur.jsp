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
								<i class="icon-user-md"></i><span class="break"></span>选课表
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
										<th>课程编号</th>
										<th>课程名称</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${teaCurList }" var="teaCurOne">
										<tr>
											<td>${teaCurOne.cur_id }</td>
											<td class="center">${teaCurOne.cur_name }</td>
											<td class="center"><a class="btn btn-danger" href="#"
												data-toggle="modal"
												data-target="#deleteTeaCurOne${teaCurOne.cur_id}" title="删除">
													<i class="icon-trash "></i>
											</a>
												<div class="modal fade" tabindex="-1" role="dialog"
													id="deleteTeaCurOne${teaCurOne.cur_id}"
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
																	id="delete_teaCur_but1"
																	onClick="delete_teaCur(${teaCurOne.cur_id},${teaId })">确认</button>
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
				<div class="row-fluid">
					<div class="box span12">
						<div class="box-header" data-original-title="">
							<h2>
								<i class="icon-user-md"></i><span class="break"></span>课程表
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
										<th>课程编号</th>
										<th>课程名称</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${curList }" var="curOne">
										<tr>
											<td>${curOne.cur_id }</td>
											<td class="center">${curOne.cur_name }</td>
											<td class="center"><a class="btn btn-info" href="#"
												data-toggle="modal"
												data-target="#addOneTeaCur${curOne.cur_id }" title="添加教师">
													<i class=" icon-ok "></i>
											</a>
												<div class="modal fade" tabindex="-1" role="dialog"
													id="addOneTeaCur${curOne.cur_id }" tabindex="-1"
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
																<h3>确定要添加该课程吗？</h3>
															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-default"
																	data-dismiss="modal">取消</button>
																<button type="button" class="btn btn-primary"
																	id="add_teaCur_but1"
																	onClick="add_teaCur(${curOne.cur_id },${teaId })">确认</button>
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
	function delete_teaCur(curId,teaId)
	{
 		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath}/teacher/course",
			data:{_method:"DELETE",curId:curId,teaId:teaId},
			success:function(data){
				if(data=="OK")
				window.location.reload();
			}
		}); 
	}
	function add_teaCur(curId,teaId)
	{
		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath}/teacher/course",
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