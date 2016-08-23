<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- including style from include/front-end/css-include.jsp -->
<jsp:include page="../include/front-end/css-include.jsp"></jsp:include>
</head>
<body data-ng-app="homePage">
	<div id="loader">
		<div class="loader-container">
			<img
				src="${pageContext.request.contextPath}/resources/static/front-end/img/site.gif"
				alt="" class="loader-site">
		</div>
	</div>

	<div id="wrapper">
		<!-- including header from include/front-end/header-include.jsp -->
		<jsp:include page="../include/front-end/header-include.jsp"></jsp:include>

		<section class="white section" data-ng-controller="viewCtrl">
			<div class="container">
				<div class="row">
					<div id="course-content" class="col-md-8">
						<div class="course-description">
							<div class="blog-image">
								<div
									class='embed-responsive embed-responsive-4by3'>
									<iframe
										data-ng-src="{{ urls }}"
										frameborder="0"
										allowfullscreen="true" mozallowfullscreen="true" 
										webkitallowfullscreen="true" allowprint="true"></iframe>
										<!-- <iframe src="https://drive.google.com/file/d/0B2WJOSpqcAkyLW1wWFBuNm1FNTA/preview"></iframe> -->
								</div>
							</div>
							<!-- end blog-image -->
							<input type="hidden" value="${param.doc}" id="doc-id">
							<h3 class="course-title" data-ng-bind="txtTitle"></h3>
							<div class="row">
								<div class="col-md-6">
									<div class="media">
										<div class="media-left">
											<a href="#"> <img class="media-object"
												src="http://localhost:9999{{ uploaderPhoto }}"
												alt="Generic placeholder image">
											</a>
										</div>

										<div class="media-body">
											<h4 class="media-heading">អត្ថបទដោយ: {{ uploadBy }}</h4>
											<div class="rating">
												<h5>កាលបរិច្ឆេទបញ្ចូល: {{ date }}</h5>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 text-right">
									<span><strong class="ng-binding"><i
											class="fa fa-eye"></i> {{ view }}&nbsp;បានអាន</strong></span>
											<hr>
									<span id="vote"><i
										class="fa fa-thumbs-o-up fa-2x"
										style="padding: 0px 10px; color: #333333; cursor: pointer;"
										onclick="#" title="ពេញចិត្ត"></i><strong> ចំនួន​ &nbsp;<b
											style="color: #e34b11;">{{ like }}</b></strong> ពេញចិត្ត</span> |
									<span id="vote"><i
										class="fa fa-share-alt-square fa-2x"
										style="padding: 0px 10px; color: #333333; cursor: pointer;"
										onclick="#" title="ចែកចាយបន្ត"></i> ចំនួន <strong><b
											style="color: #e34b11;">{{ share }}</b></strong> ចែកចាយបន្ត</span>

									<div class="btn-group">

										<button type="button" class="btn btn-default dropdown-toggle"
											data-toggle="dropdown">
											<i class="fa  fa-plus"></i> រក្សាទុក<span class="caret"></span>
										</button>

										<ul class="dropdown-menu" role="menu"
											style="max-height: 400px; overflow: auto; padding: 15px">
											<li><a>បញ្ជីរក្សាឯកសារ:</a></li>
											<li class="divider"></li>
											<!-- <div id="#"></div> -->
											<li class="divider"></li>
											<li><a href="#" onclick=""><i class="fa fa-plus"></i>
													បង្កើតបញ្ជីរក្សាឯកសារ</a></li>
										</ul>
									</div>
								</div>
							</div>
							<hr class="invis">
							<h4>ពត៌មានបន្ថែម:</h4>
							<p>{{ description }}</p>
						</div>
						<!-- end desc -->
						<hr class="invis">

						<div id="reviews" class="feedbacks">
							<p>
								<a class="btn btn-default btn-block" role="button"
									data-toggle="collapse"
									href="page-shop-single.html#collapseExample"
									aria-expanded="false" aria-controls="collapseExample">
									មតិយោបល់របស់អ្នកប្រើប្រាស់?</a>
							</p>
							<div class="collapse" id="collapseExample" data-ng-controller="commentCtrl">
								<div class="well">
									<div class="media" ng-controller="sessoinCtrl">
										<div class="media-left">
											<a href="page-shop-single.html#"> <img
												class="media-object"
												src="{{ urls }}{{ photo }}"
												alt="Generic placeholder image">
											</a>
										</div>
										<div class="media-body">
											<h4 class="media-heading">{{ txtName }}</h4>
											<div class="form-group">
												<textarea id="txtComment" name="txtComment" data-ng-model="txtComment"
													class="form-control" placeholder="បញ្ចេញយោបល់..." data-ng-keypress="($event.which === 13)?insertComment():0"></textarea>
											</div>
										</div>
									</div>
									<div class="media" data-ng-repeat="com in comment">
										<div class="media-left">
											<a href="page-shop-single.html#"> <img
												class="media-object"
												src="{{ thumb }}{{ com.USER.PHOTO }}"
												alt="Generic placeholder image">
											</a>
										</div>
										<div class="media-body">
											<h4 class="media-heading">{{ com.USER.USER_NAME }}</h4>
											<div class="rating">
												<h5>កាលបរិច្ឆេទបញ្ចូល: {{ com.CMT_DATE }}</h5>
											</div>
											<!-- end rating -->
											<p>{{ com.CMT_TEXT }}</p>
										</div>
									</div>
									<!-- end media -->
								</div>
								<!-- end well -->
							</div>
							<!-- end collapse -->
						</div>
						<!-- end reviews -->
					</div>
					<!-- end col -->

					<div id="course-left-sidebar" class="col-md-4" data-ng-controller="viewCtrl">
						<div class="widget">
							<!-- <div class="widget-title"> -->
							<h4 style="margin-top: 0px; line-height: 0.8 !important;">អត្ថបទស្រដៀង:</h4>
							<!-- </div> -->
							<div class="course-table">
								<table class="table" id="doc-table">
									<thead>
									</thead>
									<tbody>
										<tr data-ng-repeat="r in recom" data-ng-if="r.CATEGORY.CAT_ID != '${param.doc}'">
											<td>
												<div class="media-left">
													<a href="/view/?doc={{ r.DOC_ID }}&cat={{ r.CATEGORY.CAT_ID }}" title="{{r.DOC_TITLE}}"> <img
														src="{{ thumb }}{{ r.THUMBNAIL }}"
														alt="" class="media-object" width="150" height="100">
													</a>
												</div>
												<div class="media-body">
													<h5 class="media-heading">
														{{ r.DOC_TITLE }}
													<button class="btn btn-outline btn-rounded btn-default"
														data-ng-if="r.TYPE == '1'">
														<i class="fa fa-file-powerpoint-o text-white"></i>
													</button>
													<button class="btn btn-outline btn-rounded btn-default"
														data-ng-if="r.TYPE == '2'">
														<i class="fa fa-file-pdf-o text-white"></i>
													</button>
													<button class="btn btn-outline btn-rounded btn-default"
														data-ng-if="r.TYPE == '3'"">
														<i class="fa fa-file-word-o text-white"></i>
													</button>
													</h5>
													<p class="text-muted mb-0">បញ្ចូលដោយ: {{ r.USER.USER_NAME }}</p>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						
							<hr class="invis">

							<div id="reviews" class="feedbacks">
								<p>
									<a type="button" class="btn btn-default btn-block" role="button" data-ng-click="requestMore(15)"><i
										class="fa fa-refresh"></i> ទាញបន្ថែម</a>
								</p>
							</div>
						</div>
					</div>
					<!-- end meta -->
					<!-- 						<div class="course-button">
							<a href="page-shop-cart.html" class="btn btn-primary btn-block">$50.00
								PURCHASE NOW</a>
						</div> -->
				</div>
				<!-- end col -->
			</div>
			</section>
	</div>
	
	<!-- end section -->
	<!-- including footer from include/front-end/footer-include.jsp -->
	<jsp:include page="../include/front-end/footer-include.jsp"></jsp:include>


	<section class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-md-6 text-left">
					<p>
						© 2016 KhmerSLIDE. by <a href="index9.html#">Team 3 Siem Reap</a>
					</p>
				</div>
				<!-- end col -->
				<div class="col-md-6 text-right">
					<ul class="list-inline">
						<li><a href="index9.html#">Terms of Usage</a></li>
						<li><a href="index9.html#">Privacy Policy</a></li>
						<li><a href="index9.html#">Sitemap</a></li>

					</ul>
				</div>
			</div>
			<!-- end row -->
		</div>

		<!-- end container -->
	</section>
	<!-- end section -->
	<!-- end wrapper -->
	<!-- including js from include/front-end/js-include.jsp -->
	<jsp:include page="../include/front-end/js-include.jsp"></jsp:include>
</body>
</html>