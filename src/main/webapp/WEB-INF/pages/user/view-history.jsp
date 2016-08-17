<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- including style from include/user/css-include.jsp -->
<jsp:include page="../include/user/css-include.jsp"></jsp:include>
<%-- <%@ include file="../include/css-include.jsp" %> --%>
</head>
<body data-sidebar-color="sidebar-light" class="sidebar-light" ng-app="history" ng-controller="viewhistoryListCtrl">
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
		<div class="page-container white">
			<div class="page-header clearfix">
				<div class="row">
					<div class="col-sm-12">
						<h4 class="mt-0 mb-5">ឯកសារដែលធ្លាប់បានមើល</h4>
						<br>
						<ol class="breadcrumb mb-0">
							<li><a href="index">Khmer Slide</a></li>
							<li>ឯកសារ</li>
							<li class="active">History</li>
						</ol>
					</div>
				</div>
			</div>
			<div class="page-content container-fluid">
				<div class="row" class="clearfix">
					<div class="pricing-table pricing-3">
						<div class="row row-0">
							<div class="col-md-3 pricing-item"  ng-repeat="H in viewhistory">
								<div class="item cat1">
										<div class="shop-item-list entry">
											<div class="">
												<img
													src="http://localhost:9999/{{ H.DOC_ID.THUMBNAIL }}"
													alt="" class="media-object">
												<div class="magnifier"></div>
											</div>
											<div class="shop-item-title clearfix">
												<h4 class="text-center">
													<a href="course-single.html">{{H.DOC_ID.DOC_TITLE}}</a>
												</h4>
												<div class="shopmeta">
													<span class="pull-left">{{H.DOC_ID.VIEWED}}views</span>
													<div class="pull-right">
														<span class="pull-left"><i
															class="fa fa-thumbs-o-up text-primary"></i>{{H.DOC_ID.LIKED}} </span>
													</div>
													<!-- end rating -->
												</div>
												<!-- end shop-meta -->
											</div>
											<!-- end shop-item-title -->
										</div>
									<!-- end relative -->
								</div>
							
						</div>
					</div>
				</div>
					<div class="row">
					<div class="col-sm-12 text-center">
						<button type="submit" name="btnLoadMore"
							class="btn btn-outline btn-rounded btn-success">
							<i class="ti-reload"></i> ទាញបន្ថែម
						</button>
					</div>
				</div>
			</div>
		</div>
		<!-- including js from include/user/js-include.jsp -->
	<jsp:include page="../include/user/dashboard-js-include.jsp"></jsp:include>
		<!-- Right Sidebar start-->
		<jsp:include page="../include/user/right-side-bar.jsp"></jsp:include>
		<!-- Right Sidebar end-->
	</div>
	
	
</body>
</html>