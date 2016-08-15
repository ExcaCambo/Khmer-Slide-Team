<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- including style from include/user/css-include.jsp -->
<jsp:include page="../include/user/css-include.jsp"></jsp:include>
<%-- <%@ include file="../include/css-include.jsp" %> --%>
</head>
<body data-sidebar-color="sidebar-light" class="sidebar-light">
	<!-- Header start-->
	<header>
		<!-- including header from include/user/header.jsp -->
		<jsp:include page="../include/user/header.jsp"></jsp:include>
	</header>
	<!-- Header end-->
	<div class="main-container">
		<!-- Main Sidebar start-->
		<aside data-mcs-theme="minimal-dark"
			style="background-image: url(${pageContext.request.contextPath}/resources/static/img/backgrounds/11.jpg)"
			class="main-sidebar mCustomScrollbar">
			<!-- including Main Sidebar from include/user/main-sidebar-include.jsp -->
			<jsp:include page="../include/user/main-sidebar-include.jsp"></jsp:include>
		</aside>
		<!-- Main Sidebar end-->
		<div class="page-container">
			<div class="page-header clearfix">
				<div class="row">
					<div class="col-sm-12">
						<h4 class="mt-0 mb-5">គ្រប់គ្រងឯកសារ</h4>
						<br>
						<ol class="breadcrumb mb-0">
							<li><a href="index">Khmer Slide</a></li>
							<li class="active">ឯកសារ</li>
						</ol>
					</div>
				</div>
			</div>
			<div class="page-content container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="widget">
							<div class="widget-heading">
								<h3 class="widget-title" style="text-align: center;">វិទ្យាសាស្ត្រកុំព្យូទ័រ</h3>
							</div>
							<div class="widget-body">
								<table id="my-doc-table" style="width: 100%"
									class="table table-hover dt-responsive nowrap">
									<thead>
										<tr>
											<th style="width: 5%"></th>
											<th style="width: 90%"></th>
											<th style="width: 5%"></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>
												<div class="media">
													<div class="media-left">
														<a href="#">
														<img
															src="${pageContext.request.contextPath}/resources/static/img/thumbnails/course_01.png"
															alt="" class="media-object" width="100" height="70"></a>
															<span class="status bg-success"></span>
													</div>
													<div class="media-body">
														<h5 class="media-heading">ភាសា Java</h5>
														<p class="text-muted mb-0">បញ្ចូលដោយ: ណែម សុធា</p>	
													</div>
												</div>
											</td>
											<td>
												<div role="toolbar" aria-label="Toolbar with button groups"
													class="btn-toolbar">
													<div role="group" aria-label="First group"
														class="btn-group">
														<button type="button" class="btn btn-outline btn-danger">
															<i class="ti-close"></i>
														</button>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>2</td>
											<td>
												<div class="media">
													<div class="media-left">
														<img
															src="${pageContext.request.contextPath}/resources/static/img/thumbnails/course_02.png"
															alt="" class="media-object" width="100" height="70"><span
															class="status bg-success"></span>
													</div>
													<div class="media-body">
														<h5 class="media-heading">Web Design</h5>
														<p class="text-muted mb-0">បញ្ចូលដោយ: ណែម សុធា,
</p>
													</div>
												</div>
											</td>
											<td>
												<div role="toolbar" aria-label="Toolbar with button groups"
													class="btn-toolbar">
													<div role="group" aria-label="First group"
														class="btn-group">
														<button type="button" class="btn btn-outline btn-danger">
															<i class="ti-close"></i>
														</button>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>3</td>
											<td>
												<div class="media">
													<div class="media-left">
														<img
															src="${pageContext.request.contextPath}/resources/static/img/thumbnails/course_01.png"
															alt="" class="media-object" width="100" height="70"><span
															class="status bg-success"></span>
													</div>
													<div class="media-body">
														<h5 class="media-heading">ភាសា Java</h5>
														<p class="text-muted mb-0">បញ្ចូលដោយ: ណែម សុធា</p>	
													</div>
												</div>
											</td>
											<td>
												<div role="toolbar" aria-label="Toolbar with button groups"
													class="btn-toolbar">
													<div role="group" aria-label="First group"
														class="btn-group">
														<button type="button" class="btn btn-outline btn-danger">
															<i class="ti-close"></i>
														</button>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>4</td>
											<td>
												<div class="media">
													<div class="media-left">
														<img
															src="${pageContext.request.contextPath}/resources/static/img/thumbnails/course_02.png"
															alt="" class="media-object" width="100" height="70"><span
															class="status bg-success"></span>
													</div>
													<div class="media-body">
														<h5 class="media-heading">Web Design</h5>
														<p class="text-muted mb-0">បញ្ចូលដោយ: ណែម សុធា</p>
													</div>
												</div>
											</td>	
											<td>
												<div role="toolbar" aria-label="Toolbar with button groups"
													class="btn-toolbar">
													<div role="group" aria-label="First group"
														class="btn-group">
														<button type="button" class="btn btn-outline btn-danger">
															<i class="ti-close"></i>
														</button>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>5</td>
											<td>
												<div class="media">
													<div class="media-left">
														<img
															src="${pageContext.request.contextPath}/resources/static/img/thumbnails/course_01.png"
															alt="" class="media-object" width="100" height="70"><span
															class="status bg-success"></span>
													</div>
													<div class="media-body">
														<h5 class="media-heading">ភាសា Java</h5>
														<p class="text-muted mb-0">បញ្ចូលដោយ: ណែម សុធា</p>
													</div>
												</div>
											</td>
											<td>
												<div role="toolbar" aria-label="Toolbar with button groups"
													class="btn-toolbar">
													<div role="group" aria-label="First group"
														class="btn-group">
														<button type="button" class="btn btn-outline btn-danger">
															<i class="ti-close"></i>
														</button>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>6</td>
											<td>
												<div class="media">
													<div class="media-left">
														<img
															src="${pageContext.request.contextPath}/resources/static/img/thumbnails/course_02.png"
															alt="" class="media-object" width="100" height="70"><span
															class="status bg-success"></span>
													</div>
													<div class="media-body">
														<h5 class="media-heading">Web Design</h5>
														<p class="text-muted mb-0">បញ្ចូលដោយ: ណែម សុធា</p>
													</div>
												</div>
											</td>
											<td>
												<div role="toolbar" aria-label="Toolbar with button groups"
													class="btn-toolbar">
													<div role="group" aria-label="First group"
														class="btn-group">
														<button type="button" class="btn btn-outline btn-danger">
															<i class="ti-close"></i>
														</button>
													</div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Right Sidebar start-->
		<jsp:include page="../include/user/right-side-bar.jsp"></jsp:include>
		<!-- Right Sidebar end-->
	</div>

	<!-- including js from include/user/js-include.jsp -->
	<jsp:include page="../include/user/js-include.jsp"></jsp:include>
</body>
</html>
