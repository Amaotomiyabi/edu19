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
			<jsp:include page="/WEB-INF/jsp/leftMenu.jsp" flush="true"></jsp:include>
			<!-- start: Main Menu -->

			<!-- end: Main Menu -->

			<!-- start: Content -->
			<div id="content" class="span10">
				<div class="row-fluid">
					<div class="box span12">
						<div class="box-header" data-original-title="">
							<h2>
								<i class="icon-user-md"></i><span class="break"></span>学生
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
								style="display: none;">
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
											<form class="form-horizontal" id="stu_form_add1"
												action="${pageContext.request.contextPath }/student"
												method="post">
												<fieldset>
													<div class="control-group">
														<label class="control-label" for="stu_name">姓名</label>
														<div class="controls">
															<input type="text" id="stu_name" name="stu_name"
																required="required" />
														</div>
													</div>
													<div class="control-group" style="margin-top: 20px;">
														<label class="control-label" for="stu_account">账号</label>
														<div class="controls">
															<input type="text" id="stu_account" name="stu_account" />
															<p>如果不填写账号则默认账号为学号</p>
														</div>
													</div>
													<div class="control-group">
														<label class="control-label" for="stu_password">密码</label>
														<div class="controls">
															<input type="text" id="stu_password" name="stu_password"
																required="required" />
														</div>
													</div>
													<div class="control-group">
														<label class="control-label" for="stu_num">学号</label>
														<div class="controls">
															<input type="text" id="stu_num" name="stu_num"
																required="required" />
														</div>
													</div>
												</fieldset>
											</form>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">关闭</button>
											<button type="button" class="btn btn-primary"
												id="add_stu_but1">确认</button>
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
										<th>学号</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${stuList }" var="stuOne">
										<tr>
											<td>${stuOne.stu_id }</td>
											<td class="center">${stuOne.stu_name }</td>
											<td class="center">${stuOne.stu_account }</td>
											<td class="center">${stuOne.stu_password }</td>
											<td class="center">${stuOne.stu_num }</td>
											<td class="center"><a class="btn btn-success" href="#"
												data-toggle="modal" data-target="#viewAll${stuOne.stu_id }">
													<i class="icon-zoom-in "></i>
											</a><a class="btn btn-info" href="#" data-toggle="modal"
												data-target="#updateOne${stuOne.stu_id }"> <i
													class="icon-edit "></i>
											</a> <a class="btn btn-danger" href="#" data-toggle="modal"
												data-target="#deleteOne${stuOne.stu_id }"> <i
													class="icon-trash "></i>
											</a>
												<div class="modal fade" tabindex="-1" role="dialog"
													id="viewAll${stuOne.stu_id }" style="display: none">
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
																<form class="form-horizontal" id="stu_form_view1">
																	<fieldset>
																		<div class="control-group success">
																			<label class="control-label" for="stu_id">学号</label>
																			<div class="controls">
																				<h5 id="stu_id">${stuOne.stu_id }</h5>
																			</div>
																		</div>

																		<div class="control-group success">
																			<label class="control-label" for="stu_num">学号</label>
																			<div class="controls">
																				<h5 id="stu_num">${stuOne.stu_num }</h5>
																			</div>
																		</div>
																		<div class="control-group success"
																			style="margin-top: 20px;">
																			<label class="control-label" for="stu_name">姓名</label>
																			<div class="controls">
																				<h5 id="stu_name">${stuOne.stu_name }</h5>
																			</div>
																		</div>
																		<div class="control-group success">
																			<label class="control-label" for="stu_sex">性别</label>
																			<div class="controls">
																				<h5 id="stu_sex">${stuOne.stu_sex }</h5>
																			</div>
																		</div>
																		<div class="control-group success">
																			<label class="control-label"
																				for="stu_political_outlook">政治面貌</label>
																			<div class="controls">
																				<h5 id="stu_political_outlook">${stuOne.stu_political_outlook }</h5>
																			</div>
																		</div>
																		<div class="control-group success">
																			<label class="control-label" for="stu_birthday">出生日期</label>
																			<div class="controls">
																				<h5 id="stu_birthday">${stuOne.stu_birthday }</h5>
																			</div>
																		</div>
																		<div class="control-group success">
																			<label class="control-label" for="stu_iden_num">身份证号</label>
																			<div class="controls">
																				<h5 id="stu_iden_num">${stuOne.stu_iden_num }</h5>
																			</div>
																		</div>
																		<div class="control-group success">
																			<label class="control-label" for="stu_nation">民族</label>
																			<div class="controls">
																				<h5 id="stu_nation">${stuOne.stu_nation }</h5>
																			</div>
																		</div>
																		<div class="control-group success">
																			<label class="control-label" for="stu_phone">联系电话</label>
																			<div class="controls">
																				<h5 id="stu_phone">${stuOne.stu_phone }</h5>
																			</div>
																		</div>
																		<div class="control-group success">
																			<label class="control-label" for="stu_major">专业</label>
																			<div class="controls">
																				<h5 id="stu_major">${stuOne.stu_major }</h5>
																			</div>
																		</div>
																		<div class="control-group success">
																			<label class="control-label" for="stu_colleges">院校</label>
																			<div class="controls">
																				<h5 id="stu_colleges">${stuOne.stu_colleges }</h5>
																			</div>
																		</div>
																		<div class="control-group success">
																			<label class="control-label" for="stu_addr">家庭住址</label>
																			<div class="controls">
																				<h5 id="stu_addr">${stuOne.stu_addr }</h5>
																			</div>
																		</div>
																		<div class="control-group success">
																			<label class="control-label" for="stu_account">账号</label>
																			<div class="controls">
																				<h5 id="stu_account">${stuOne.stu_account }</h5>
																			</div>
																		</div>
																		<div class="control-group success">
																			<label class="control-label" for="stu_password">密码</label>
																			<div class="controls">
																				<h5 id="stu_password">${stuOne.stu_password }</h5>
																			</div>
																		</div>
																	</fieldset>
																</form>
															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-default"
																	data-dismiss="modal" id="view_stu_but1">关闭</button>
															</div>
														</div>
													</div>
												</div>
												<div class="modal fade" tabindex="-1" role="dialog"
													id="updateOne${stuOne.stu_id }" style="display: none">
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
																<form class="form-horizontal" method="post"
																	action="${pageContext.request.contextPath }/student"
																	id="stu_form_update1${stuOne.stu_id }">
																	<input type="hidden" name="_method" value="put" /> <input
																		type="hidden" name="stu_id" value="${stuOne.stu_id }" />
																	<fieldset>
																		<div class="control-group">
																			<label class="control-label" for="stu_num">学号</label>
																			<div class="controls">
																				<input type="text" id="stu_num" name="stu_num"
																					value="${stuOne.stu_num }">
																			</div>
																		</div>
																		<div class="control-group" style="margin-top: 20px;">
																			<label class="control-label" for="stu_name">姓名</label>
																			<div class="controls">
																				<input type="text" id="stu_name" name="stu_name"
																					value="${stuOne.stu_name }">
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="stu_sex">性别</label>
																			<div class="controls">
																				<div id="stu_sex" style="margin-top: 1%;">
																					<input type="radio" value="男" name="stu_sex"
																						style="margin-left: 0"
																						<c:if test="${stuOne.stu_sex=='男' }">
																				checked="checked"
																				</c:if> />男
																					<input type="radio" value="女" name="stu_sex"
																						style="margin-left: 0"
																						<c:if test="${stuOne.stu_sex=='女' }">
																				checked="checked"
																				</c:if> />女
																				</div>
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label"
																				for="stu_political_outlook">政治面貌</label>
																			<div class="controls">
																				<input type="text" id="stu_political_outlook"
																					name="stu_political_outlook"
																					value="${stuOne.stu_political_outlook }">
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="stu_birthday">出生日期</label>
																			<div class="controls">
																				<input type="date" id="stu_birthday"
																					name="stu_birthday"
																					value="<fmt:formatDate value="${stuOne.stu_birthday }" pattern="yyyy-MM-dd"/>">
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="stu_iden_num">身份证号</label>
																			<div class="controls">
																				<input type="text" id="stu_iden_num"
																					name="stu_iden_num" value="${stuOne.stu_iden_num }">
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="stu_nation">民族</label>
																			<div class="controls">
																				<input type="text" id="stu_nation" name="stu_nation"
																					value="${stuOne.stu_nation }">
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="stu_phone">联系电话</label>
																			<div class="controls">
																				<input type="text" id="stu_phone" name="stu_phone"
																					value="${stuOne.stu_phone }">
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="stu_major">专业</label>
																			<div class="controls">
																				<input type="text" id="stu_major" name="stu_major"
																					value="${stuOne.stu_major }">
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="stu_colleges">院校</label>
																			<div class="controls">
																				<input type="text" id="stu_colleges"
																					name="stu_colleges" value="${stuOne.stu_colleges}">
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="stu_addr">家庭住址</label>
																			<div class="controls">
																				<input type="text" id="stu_addr" name="stu_addr"
																					value="${stuOne.stu_addr }">
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="stu_account">账号</label>
																			<div class="controls">
																				<input type="text" id="stu_account"
																					name="stu_account" value="${stuOne.stu_account }">
																				<p>如果不填写账号则默认账号为学号</p>
																			</div>
																		</div>
																		<div class="control-group">
																			<label class="control-label" for="stu_password">密码</label>
																			<div class="controls">
																				<input type="text" id="stu_password"
																					name="stu_password" value="${stuOne.stu_password }">
																			</div>
																		</div>
																	</fieldset>
																</form>
															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-default"
																	data-dismiss="modal">取消</button>
																<button type="button" class="btn btn-primary"
																	id="update_stu_but1"
																	onclick="update_stu(${stuOne.stu_id})">确认</button>
															</div>
														</div>
													</div>
												</div>
												<div class="modal fade" tabindex="-1" role="dialog"
													id="deleteOne${stuOne.stu_id }" style="display: none">
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
																	id="delete_stu_but1"
																	onclick="delete_stu(${stuOne.stu_id})">确认</button>
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
	 function delete_stu(stuId)
	 {
		 $.ajax({
			data:{_method:"DELETE",stuId:stuId},
			type:"post",
			url:"${pageContext.request.contextPath}/student",
			success:function(data){
				window.location.reload();
			}
		 });
	 }
		function update_stu(stuId)
		{
			$("#stu_form_update1"+stuId).submit();
		}
	 
	 $(document).ready(function(){
		 $("#add_stu_but1").click(function(){
			 $("#stu_form_add1").submit();
		 });
	 });
	 
	 </script>

</body>
</html>