<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- including style from include/user/css-include.jsp -->
<jsp:include page="../include/user/css-include.jsp"></jsp:include>
<%-- <%@ include file="../include/css-include.jsp" %> --%>
</head>
<body data-sidebar-color="sidebar-light" class="sidebar-light" ng-app="documentList" ng-controller="documentListCtrl">
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
						<h4 class="mt-0 mb-5">សូមស្វាគមន៍ការមកកាន់គេហទំព័រ Khmer
							Slide</h4>
						<!-- <p class="text-muted mb-0">Responsive Web App Kit</p> -->
					</div>
				</div>
			</div>
			<div class="page-content container-fluid">
				<div class="row" class="clearfix">
					<div class="pricing-table pricing-3">
						<div class="row row-0">
							<div class="col-md-3 pricing-item" ng-repeat="D in document">
								<div class="item cat1">
									<div class="shop-item-list entry">
										<div class="">
											<img
												src="${pageContext.request.contextPath}/resources/static/img/upload/{{D.THUMBNAIL}}"
												alt="">
											<div class="magnifier"></div>
										</div>
										<div class="shop-item-title clearfix">
											<h4 class="text-center">
												<a href="course-single.html">{{D.DOC_TITLE}}</a>
											</h4>
											<div class="shopmeta">
												<span class="pull-left">{{D.VIEWED}} views</span>
												<div class="pull-right">
													<span class="pull-left"><i class="fa fa-thumbs-o-up text-primary"></i>{{D.LIKED}} Likes</span>
												</div>
												<!-- end rating -->
											</div>
											<!-- end shop-meta -->
										</div>
										<!-- end shop-item-title -->
										<div class="visible-buttons">
											<a href="#"><span
												class="ti-eye"></span></a> 
											<a href="#"><span 
												class="ti-settings"></span></a>
										</div>
										<!-- end buttons -->
									</div>
									<!-- end relative -->
								</div>
								<!-- end col -->
							</div>
				<div class="row">
					<div class="col-sm-12 text-center">
						<button type="submit" name="btnLoadMore"
										class="btn btn-outline btn-rounded btn-success"><i class="ti-reload"></i> ទាញបន្ថែម</button>
					</div>
				</div>
			</div>
		</div>
		<!-- Right Sidebar start-->
		<jsp:include page="../include/user/right-side-bar.jsp"></jsp:include>
		<!-- Right Sidebar end-->
	</div>
	<!-- including js from include/user/js-include.jsp -->
	<jsp:include page="../include/user/dashboard-js-include.jsp"></jsp:include>
</body>
</html>
