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
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/bootstrap-responsive.min.css" rel="stylesheet" />
<link href="css/style.min.css" rel="stylesheet" />
<link href="css/style-responsive.min.css" rel="stylesheet" />
<link href="css/retina.css" rel="stylesheet" />
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
								<i class="icon-user-md"></i><span class="break"></span>课程表
							</h2>
							<div class="box-icon">
								<a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
								<a href="#" class="btn-close"><i class="icon-remove"></i></a>
							</div>
						</div>
						<div class="box-content">
							<button type="button" class="btn btn-default"
								style="background: #FFFFFF; border-color: #CDCDCD; border-style: solid; border-width: 1px; border-radius: 4px;"
								data-toggle="modal" data-target="#addOne">新增</button>
							<div class="modal fade" role="dialog" id="addOne" tabindex="-1"
								style="display: none">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button class="close" type="button" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title">新增</h4>
										</div>
										<div class="modal-body">
											<form class="form-horizontal" id="cur_form_add1"
												action="${pageContext.request.contextPath }/course"
												method="post">
												<fieldset>
													<div class="control-group">
														<label class="control-label" for="cur_name">课程名称</label>
														<div class="controls">
															<input type="text" id="cur_name" name="cur_name"
																required="required" />
														</div>
													</div>
													<div class="control-group">
														<label class="control-label" for="cur_time">课程学时</label>
														<div class="controls">
															<input type="text" id="cur_time" name="cur_time"
																required="required" />
														</div>
													</div>
													<div class="control-group">
														<label class="control-label" for="cur_mark">课程学分</label>
														<div class="controls">
															<input type="text" id="cur_mark" name="cur_mark"
																required="required" />
														</div>
													</div>
													<div class="control-group">
														<label class="control-label" for="cur_grade_point">课程绩点</label>
														<div class="controls">
															<input type="text" id="cur_grade_point"
																name="cur_grade_point" required="required" />
														</div>
													</div>
													<div class="control-group">
														<label class="control-label" for="cur_regular_grade">课程平时分占比</label>
														<div class="controls">
															<input type="text" id="cur_regular_grade"
																name="cur_regular_grade" required="required" />
														</div>
													</div>
													<div class="control-group">
														<label class="control-label" for="cur_exam_mark">课程测试分占比</label>
														<div class="controls">
															<input type="text" id="cur_exam_mark"
																name="cur_exam_mark" required="required" />
														</div>
													</div>
												</fieldset>
											</form>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">关闭</button>
											<button type="button" class="btn btn-primary"
												id="add_form_but1">确认</button>
										</div>
									</div>
								</div>
							</div>
							

							<table
								class="table table-striped table-bordered bootstrap-datatable datatable">
								<thead>
									<tr>
										<th>课程编号</th>
										<th>课程名称</th>
										<th>课程学时</th>
										<th>Actions</th>
										<th>任课老师</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${curList }" var="curOne">
										<tr>
											<td>${curOne.cur_id }</td>
											<td class="center">${curOne.cur_name }</td>
											<td class="center">${curOne.cur_time }</td>
											<td class="center"><a class="btn btn-success" href="#"
												data-toggle="modal" data-target="#viewAll${curOne.cur_id }"
												title="显示详细信息"> <i class="icon-zoom-in "></i>
											</a> <a class="btn btn-info" href="#" data-toggle="modal"
												data-target="#updateOne${curOne.cur_id }" title="修改信息">
													<i class="icon-edit "></i>
											</a> <a class="btn btn-danger" href="#" data-toggle="modal"
												data-target="#deleteOne${curOne.cur_id }" title="删除"> <i
													class="icon-trash "></i>
											</a>
												<div class="modal fade" role="dialog"
													id="viewAll${curOne.cur_id }" tabindex="-1"
													style="display: none">
													>
													<div class="modal-dialog">
														<div class="modal-content">
															<div class="modal-header">
																<button class="close" type="button" data-dismiss="modal"
																	aria-label="Close">
																	<span aria-hidden="true">&times;</span>
																</button>
																<h4 class="modal-title">查看详细信息</h4>
															</div>
															<div class="modal-body">
																<form class="form-horizontal">
																	<fieldset>
																		<div class="control-group">
																			<label class="control-label" for="cur_id">课程编号</label>
																			<div class="controls">
																				<h5 id="cur_id">${curOne.cur_id }</h5>
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="cur_name">课程名称</label>
																			<div class="controls">
																				<h5 id="cur_name">${curOne.cur_name }</h5>
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="cur_time">课程学时</label>
																			<div class="controls">
																				<h5 id="cur_time">${curOne.cur_time }</h5>
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="cur_mark">课程学分</label>
																			<div class="controls">
																				<h5 id="cur_mark">${curOne.cur_mark }</h5>
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="cur_grade_point">课程绩点</label>
																			<div class="controls">
																				<h5 id="cur_grade_point">${curOne.cur_grade_point }</h5>
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="cur_regular_grade">课程平时分占比</label>
																			<div class="controls">
																				<h5 id="cur_regular_grade">${curOne.cur_regular_grade }</h5>
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="cur_exam_mark">课程测试分占比</label>
																			<div class="controls">
																				<h5 id="cur_exam_mark">${curOne.cur_exam_mark }</h5>
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="cur_total_mark">课程总分</label>
																			<div class="controls">
																				<h5 id="cur_total_mark">${curOne.cur_total_mark }</h5>
																			</div>
																		</div>
																	</fieldset>
																</form>
															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-default"
																	data-dismiss="modal">关闭</button>
															</div>
														</div>
													</div>
												</div>
												<div class="modal fade" role="dialog"
													id="updateOne${curOne.cur_id }" tabindex="-1"
													style="display: none">
													>
													<div class="modal-dialog">
														<div class="modal-content">
															<div class="modal-header">
																<button class="close" type="button" data-dismiss="modal"
																	aria-label="Close">
																	<span aria-hidden="true">&times;</span>
																</button>
																<h4 class="modal-title">修改</h4>
															</div>
															<div class="modal-body">
																<form class="form-horizontal"
																	id="cur_form_update1${curOne.cur_id }"
																	action="${pageContext.request.contextPath }/course"
																	method="post">
																	<input type="hidden" name="_method" value="PUT" /> <input
																		type="hidden" name="cur_id" id="update_cur_id"
																		value="${curOne.cur_id }" />
																	<fieldset>
																		<div class="control-group">
																			<label class="control-label" for="cur_name">课程名称</label>
																			<div class="controls">
																				<input type="text" id="cur_name" name="cur_name"
																					required="required" value="${curOne.cur_name }" />
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="cur_time">课程学时</label>
																			<div class="controls">
																				<input type="text" id="cur_time" name="cur_time"
																					required="required" value="${curOne.cur_time }" />
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="cur_mark">课程学分</label>
																			<div class="controls">
																				<input type="text" id="cur_mark" name="cur_mark"
																					required="required" value="${curOne.cur_mark }" />
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="cur_grade_point">课程绩点</label>
																			<div class="controls">
																				<input type="text" id="cur_grade_point"
																					name="cur_grade_point" required="required"
																					value="${curOne.cur_grade_point }" />
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="cur_regular_grade">课程平时分占比</label>
																			<div class="controls">
																				<input type="text" id="cur_regular_grade"
																					name="cur_regular_grade" required="required"
																					value="${curOne.cur_regular_grade }" />
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="cur_exam_mark">课程测试分占比</label>
																			<div class="controls">
																				<input type="text" id="cur_exam_mark"
																					name="cur_exam_mark" required="required"
																					value="${curOne.cur_exam_mark }" />
																			</div>
																		</div>
																	</fieldset>
																</form>
															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-default"
																	data-dismiss="modal">关闭</button>
																<button type="button" class="btn btn-primary"
																	id="update_form_but1"
																	onclick="update_cur(${curOne.cur_id})">确认</button>
															</div>
														</div>
													</div>
												</div>
												<div class="modal fade" tabindex="-1" role="dialog"
													id="deleteOne${curOne.cur_id }" style="display: none">
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
																	id="delete_but1" onClick="delete_cur(${curOne.cur_id})">确认</button>
															</div>
														</div>
													</div>
												</div></td>
											<td class="center"><a class="btn btn-success"
												href="${pageContext.request.contextPath }/course/teachers/${curOne.cur_id}"
												title="查看课程对应老师"> <i class="icon-user-md "></i>
											</a></td>
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
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/jquery-migrate-1.2.1.min.js"></script>
	<script src="js/jquery-ui-1.10.3.custom.min.js"></script>
	<script src="js/jquery.ui.touch-punch.js"></script>
	<script src="js/modernizr.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.cookie.js"></script>
	<script src='js/fullcalendar.min.js'></script>
	<script src='js/jquery.dataTables.min.js'></script>
	<script src="js/excanvas.js"></script>
	<script src="js/jquery.flot.js"></script>
	<script src="js/jquery.flot.pie.js"></script>
	<script src="js/jquery.flot.stack.js"></script>
	<script src="js/jquery.flot.resize.min.js"></script>
	<script src="js/jquery.flot.time.js"></script>
	<script src="js/jquery.chosen.min.js"></script>
	<script src="js/jquery.uniform.min.js"></script>
	<script src="js/jquery.cleditor.min.js"></script>
	<script src="js/jquery.noty.js"></script>
	<script src="js/jquery.elfinder.min.js"></script>
	<script src="js/jquery.raty.min.js"></script>
	<script src="js/jquery.iphone.toggle.js"></script>
	<script src="js/jquery.uploadify-3.1.min.js"></script>
	<script src="js/jquery.gritter.min.js"></script>
	<script src="js/jquery.imagesloaded.js"></script>
	<script src="js/jquery.masonry.min.js"></script>
	<script src="js/jquery.knob.modified.js"></script>
	<script src="js/jquery.sparkline.min.js"></script>
	<script src="js/counter.min.js"></script>
	<script src="js/raphael.2.1.0.min.js"></script>
	<script src="js/justgage.1.0.1.min.js"></script>
	<script src="js/jquery.autosize.min.js"></script>
	<script src="js/retina.js"></script>
	<script src="js/jquery.placeholder.min.js"></script>
	<script src="js/wizard.min.js"></script>
	<script src="js/core.min.js"></script>
	<script src="js/charts.min.js"></script>
	<script src="js/custom.min.js"></script>
	<!-- end: JavaScript-->
	<script>
	function delete_cur(curId)
	{
 		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath}/course",
			data:{_method:"DELETE",curId:curId},
			success:function(data){
				window.location.reload();
			}
		}); 
	}
	
	function update_cur(curId)
	{
		$("#cur_form_update1"+curId).submit();
	}
		$(document).ready(function() {
			$("#add_form_but1").click(function() {
				$("#cur_form_add1").submit();
			});
		});
	</script>
</body>
</html>