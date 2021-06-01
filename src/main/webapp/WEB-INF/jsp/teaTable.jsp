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
								<i class="icon-user-md"></i><span class="break"></span>老师
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
							<div class="modal fade" tabindex="-1" role="dialog" id="addOne"
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
											<form class="form-horizontal" id="tea_form_add1"
												action="${pageContext.request.contextPath }/teacher"
												method="post">
												<fieldset>
													<div class="control-group">
														<label class="control-label" for="teacher_name">姓名</label>
														<div class="controls">
															<input type="text" id="teacher_name" name="teacher_name"
																required="required" />
														</div>
													</div>
													<div class="control-group" style="margin-top: 20px;">
														<label class="control-label" for="teacher_account">账号</label>
														<div class="controls">
															<input type="text" id="teacher_account"
																name="teacher_account" required="required" />
														</div>
													</div>
													<div class="control-group">
														<label class="control-label" for="teacher_password">密码</label>
														<div class="controls">
															<input type="text" id="teacher_password"
																name="teacher_password" required="required" />
														</div>
													</div>
													<div class="control-group">
														<label class="control-label" for="teacher_phone">联系电话</label>
														<div class="controls">
															<input type="text" id="teacher_phone"
																name="teacher_phone" required="required" />
														</div>
													</div>
													<div class="control-group">
														<label class="control-label" for="teacher_sex">性别</label>
														<div class="controls">
															<div id="teacher_sex" style="margin-top: 1%;">
																<input type="radio" name="teacher_sex" value="男"
																	checked="checked" style="margin-left: 0px;" />男 <input
																	type="radio" name="teacher_sex" value="女"
																	style="margin-left: 0px;" />女
															</div>
														</div>
													</div>
												</fieldset>
											</form>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">关闭</button>
											<button type="button" class="btn btn-primary"
												id="add_tea_but1">确认</button>
										</div>
									</div>
								</div>
							</div>
							
							<table
								class="table table-striped table-bordered bootstrap-datatable datatable">
								<thead>
									<tr>
										<th>ID</th>
										<th>姓名</th>
										<th>账号</th>
										<th>密码</th>
										<th>性别</th>
										<th>联系电话</th>
										<th>Actions</th>
										<th>选课</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${ teaList}" var="teaOne">
										<tr>
											<td>${teaOne.teacher_id }</td>
											<td class="center">${teaOne.teacher_name }</td>
											<td class="center">${teaOne.teacher_account }</td>
											<td class="center">${teaOne.teacher_password }</td>
											<td class="center">${teaOne.teacher_sex }</td>
											<td class="center">${teaOne.teacher_phone }</td>
											<td class="center"><a class="btn btn-info" href="#"
												data-toggle="modal"
												data-target="#updateOne${teaOne.teacher_id }"> <i
													class="icon-edit "></i>
											</a> <a class="btn btn-danger" href="#" data-toggle="modal"
												data-target="#deleteOne${teaOne.teacher_id }"> <i
													class="icon-trash "></i>
											</a>
												<div class="modal fade" tabindex="-1" role="dialog"
													id="updateOne${teaOne.teacher_id }" style="display: none;">
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
																	action="${pageContext.request.contextPath }/teacher"
																	method="post"
																	id="tea_form_update1${teaOne.teacher_id }">
																	<input type="hidden" name="_method" value="put" /> <input
																		type="hidden" name="teacher_id"
																		value="${teaOne.teacher_id }" />
																	<fieldset>
																		<div class="control-group">
																			<label class="control-label" for="teacher_name">姓名</label>
																			<div class="controls">
																				<input type="text" id="teacher_name"
																					name="teacher_name" required="required"
																					value="${teaOne.teacher_name }" />
																			</div>
																		</div>
																		<div class="control-group" style="margin-top: 20px;">
																			<label class="control-label" for="teacher_account">账号</label>
																			<div class="controls">
																				<input type="text" id="teacher_account"
																					name="teacher_account" required="required"
																					value="${teaOne.teacher_account }" />
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="teacher_password">密码</label>
																			<div class="controls">
																				<input type="text" id="teacher_password"
																					name="teacher_password" required="required"
																					value="${teaOne.teacher_password }" />
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="teacher_phone">联系电话</label>
																			<div class="controls">
																				<input type="text" id="teacher_phone"
																					name="teacher_phone" required="required"
																					value="${teaOne.teacher_phone }" />
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="teacher_sex">性别</label>
																			<div class="controls">
																				<div id="teacher_sex" style="margin-top: 1%;">
																					<input type="radio" name="teacher_sex" value="男"
																						style="margin-left: 0px;"
																						<c:if test="${teaOne.teacher_sex=='男' }">checked="checked"</c:if> />男
																					<input type="radio" name="teacher_sex" value="女"
																						style="margin-left: 0px;"
																						<c:if test="${teaOne.teacher_sex=='女' }">checked="checked"</c:if> />女
																				</div>
																			</div>
																		</div>
																	</fieldset>
																</form>
															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-default"
																	data-dismiss="modal">关闭</button>
																<button type="button" class="btn btn-primary"
																	id="update_tea_but1"
																	onclick="update_tea(${teaOne.teacher_id})">确认</button>
															</div>
														</div>
													</div>
												</div>
												<div class="modal fade" tabindex="-1" role="dialog"
													id="deleteOne${teaOne.teacher_id }" style="display: none">
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
																	id="delete_tea_but1"
																	onclick="delete_tea(${teaOne.teacher_id})">确认</button>
															</div>
														</div>
													</div>
												</div></td>
											<td class="center"><a class="btn btn-info"
												href="${pageContext.request.contextPath }/teacher/${teaOne.teacher_id}/courses">
													<i class="icon-list-ol "></i>
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
	</div>
	<div class="clearfix"></div>
	<footer>
		<p>
			<span style="text-align: left; float: left">毕业设计</span>
		</p>
	</footer>
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
function delete_tea(teaId)
{
	$.ajax({
		url:"${pageContext.request.contextPath}/teacher",
		data:{_method:"DELETE",teaId:teaId},
		type:"post",
		success:function(data)
		{
			window.location.reload();
		}
	});
	}
	function update_tea(teaId)
	{
		$("#tea_form_update1"+teaId).submit();
	}
	
	$(document).ready(function(){
		$("#add_tea_but1").click(function(){
			$("#tea_form_add1").submit();
		});
	});
</script>
</body>
</html>