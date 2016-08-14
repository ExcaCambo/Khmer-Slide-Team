<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- including style from include/front-end/css-include.jsp -->
<jsp:include page="../include/front-end/css-include.jsp"></jsp:include>
</head>
<body>
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

		<section class="white section">
			<div class="container">
				<div class="row">
					<div id="course-content" class="col-md-8">
						<div class="course-description">
							<div class="blog-image">
								<div
									class='embed-container embed-responsive embed-responsive-4by3'>
<<<<<<< HEAD
									<!-- <iframe
=======
									<iframe
>>>>>>> refs/remotes/JayzWalker/JayzWalker
										src="https://docs.google.com/presentation/d/1E59nEYMieNSMEZlAVpbbDggJtiCuLoLr4_8Tn-MXL2g/embed?start=true&loop=true&delayms=30000"
										frameborder="0"
										allowfullscreen="true" mozallowfullscreen="true" 
										webkitallowfullscreen="true" allowprint="true"></iframe> -->
										<!-- <iframe src="https://drive.google.com/file/d/0B2WJOSpqcAkyLW1wWFBuNm1FNTA/preview" width="640" height="480"></iframe> -->
										<iframe src="https://drive.google.com/file/d/0BxYRX7DKrlC4MWRkcmtqSXA2VEE/preview" width="640" height="480"></iframe>
								</div>
							</div>
							<!-- end blog-image -->

							<h3 class="course-title">ភាសា Java</h3>
							<div class="row">
								<div class="col-md-6">
									<div class="media">
										<div class="media-left">
											<a href="#"> <img class="media-object"
												src="${pageContext.request.contextPath}/resources/static/img/upload/student_01.png"
												alt="Generic placeholder image">
											</a>
										</div>

										<div class="media-body">
											<h4 class="media-heading">អត្ថបទដោយ: ឃួន សុវណ្ណវត្ថី</h4>
											<div class="rating">
												<h5>កាលបរិច្ឆេទបញ្ចូល: 06 August, 2016</h5>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 text-right">
									<span><strong class="ng-binding"><i
											class="fa fa-eye"></i>152&nbsp;បានមើល</strong></span>
											<hr>
									<span id="vote"><i
										class="fa fa-thumbs-o-up fa-2x"
										style="padding: 0px 10px; color: #333333; cursor: pointer;"
										onclick="#"></i><strong>Like&nbsp;<b
											style="color: #007500;">3</b></strong></span>
									<span id="vote"><i
										class="fa fa-share fa-2x"
										style="padding: 0px 10px; color: #333333; cursor: pointer;"
										onclick="#"></i><strong><b
											style="color: #007500;">3</b></strong></span>
											<a target="_blank" href="https://doc-0s-00-docs.googleusercontent.com/docs/securesc/o8d3aeh10i695dohadddsupdtrqm10sq/i18iu7g1h3v8nv968putrm5u470meqjm/1470650400000/04935114392850846203/08106199349295072376/0BxYRX7DKrlC4cnhIWHVCbHA2NEk?e=download">Download File</a>

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
							<p>It uses a dictionary of over 200 Latin words, combined
								with a handful of model sentence structures, to generate Lorem
								Ipsum which looks reasonable. The generated Lorem Ipsum is
								therefore always free from repetition, injected humour, or
								non-characteristic words etc.</p>
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
							<div class="collapse" id="collapseExample">
								<div class="well">
									<div class="media">
										<div class="media-left">
											<a href="page-shop-single.html#"> <img
												class="media-object"
												src="${pageContext.request.contextPath}/resources/static/img/upload/student_01.png"
												alt="Generic placeholder image">
											</a>
										</div>
										<div class="media-body">
											<h4 class="media-heading">John DOE</h4>
											<div class="form-group">
												<textarea id="txtDescription" name="txtDescription"
													class="form-control" placeholder="បញ្ចេញយោបល់..."></textarea>
											</div>
										</div>
									</div>
									<div class="media">
										<div class="media-left">
											<a href="page-shop-single.html#"> <img
												class="media-object"
												src="${pageContext.request.contextPath}/resources/static/img/upload/student_01.png"
												alt="Generic placeholder image">
											</a>
										</div>
										<div class="media-body">
											<h4 class="media-heading">John DOE</h4>
											<div class="rating">
												<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star-o"></i>
											</div>
											<!-- end rating -->
											<p>Cras sit amet nibh libero, in gravida nulla. Nulla vel
												metus scelerisque ante sollicitudin commodo. Cras purus
												odio, vestibulum in vulputate at, tempus viverra turpis.
												Fusce condimentum nunc ac nisi vulputate fringilla. Donec
												lacinia congue felis in faucibus.</p>
										</div>
									</div>
									<!-- end media -->

									<div class="media">
										<div class="media-left">
											<a href="page-shop-single.html#"> <img
												class="media-object"
												src="${pageContext.request.contextPath}/resources/static/img/upload/student_02.png"
												alt="Generic placeholder image">
											</a>
										</div>
										<div class="media-body">
											<h4 class="media-heading">Amanda FOXOE</h4>
											<div class="rating">
												<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star-o"></i>
											</div>
											<!-- end rating -->
											<p>Cras sit amet nibh libero, in gravida nulla. Nulla vel
												metus scelerisque ante sollicitudin commodo. Cras purus
												odio, vestibulum in vulputate at, tempus viverra turpis.
												Fusce condimentum nunc ac nisi vulputate fringilla. Donec
												lacinia congue felis in faucibus.</p>
										</div>
									</div>
									<!-- end media -->

									<div class="media">
										<div class="media-left">
											<a href="page-shop-single.html#"> <img
												class="media-object"
												src="${pageContext.request.contextPath}/resources/static/img/upload/student_03.png"
												alt="Generic placeholder image">
											</a>
										</div>
										<div class="media-body">
											<h4 class="media-heading">Mark BOBS</h4>
											<div class="rating">
												<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i>
											</div>
											<!-- end rating -->
											<p>Cras sit amet nibh libero, in gravida nulla. Nulla vel
												metus scelerisque ante sollicitudin commodo. Cras purus
												odio, vestibulum in vulputate at, tempus viverra turpis.
												Fusce condimentum nunc ac nisi vulputate fringilla. Donec
												lacinia congue felis in faucibus.</p>
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

					<div id="course-left-sidebar" class="col-md-4">
						<div class="widget">
							<!-- <div class="widget-title"> -->
							<h4 style="margin-top: 0px; line-height: 0.8 !important;">អត្ថបទស្រដៀង:</h4>
							<!-- </div> -->
							<div class="course-table">
								<table class="table" id="doc-table">
									<thead>
										<!-- 									<tr>
										<th>Type</th>
									</tr> -->
									</thead>
									<tbody>
										<tr>
											<td>
												<div class="media-left">
													<a href="../view"> <img
														src="${pageContext.request.contextPath}/resources/static/img/thumbnails/course_01.png"
														alt="" class="media-object" width="150" height="100">
													</a>
												</div>
												<div class="media-body">
													<h5 class="media-heading">
														ភាសា Java
														<button class="btn btn-outline btn-rounded bg-danger">
															<i class="fa fa-file-powerpoint-o text-white"></i>
														</button>
													</h5>
													<p class="text-muted mb-0">បញ្ចូលដោយ: ណែម សុធា</p>
												</div>
											</td>
										</tr>
										<tr>
											<td>
												<div class="media-left">
													<a href="#"> <img
														src="${pageContext.request.contextPath}/resources/static/img/thumbnails/course_02.png"
														alt="" class="media-object" width="150" height="100">
													</a>
												</div>
												<div class="media-body">
													<h5 class="media-heading">
														ភាសា Java
														<button class="btn btn-outline btn-rounded bg-danger">
															<i class="fa fa-file-powerpoint-o text-white"></i>
														</button>
													</h5>
													<p class="text-muted mb-0">បញ្ចូលដោយ: ណែម សុធា</p>
												</div>
											</td>
										</tr>
										<tr>
										<tr>
											<td>
												<div class="media-left">
													<a href="#"> <img
														src="${pageContext.request.contextPath}/resources/static/img/thumbnails/course_02.png"
														alt="" class="media-object" width="150" height="100">
													</a>
												</div>
												<div class="media-body">
													<h5 class="media-heading">
														ភាសា Java
														<button class="btn btn-outline btn-rounded bg-danger">
															<i class="fa fa-file-powerpoint-o text-white"></i>
														</button>
													</h5>
													<p class="text-muted mb-0">បញ្ចូលដោយ: ណែម សុធា</p>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<%-- <ul class="popular-courses">
								<li><a href="single-course.html" title=""><img
										class="img-thumbnail"
										src="${pageContext.request.contextPath}/resources/static/front-end/upload/service_01.png"
										alt=""></a></li>
								<li><a href="single-course.html" title=""><img
										class="img-thumbnail"
										src="${pageContext.request.contextPath}/resources/static/front-end/upload/service_02.png"
										alt=""></a></li>
								<li><a href="single-course.html" title=""><img
										class="img-thumbnail"
										src="${pageContext.request.contextPath}/resources/static/front-end/upload/service_03.png"
										alt=""></a></li>
								<li><a href="single-course.html" title=""><img
										class="img-thumbnail"
										src="${pageContext.request.contextPath}/resources/static/front-end/upload/service_04.png"
										alt=""></a></li>
							</ul> --%>
							<hr class="invis">

							<div id="reviews" class="feedbacks">
								<p>
									<a class="btn btn-default btn-block" role="button" href="#"><i
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

				<%-- 				<hr class="invis">

				<div class="row">
					<div class="col-md-12">
						<div class="section-title text-center">
							<h4>អត្ថបទស្រដៀង</h4>
							<p>ខាងក្រោមនេះជាអត្ថបទស្រដៀងអត្ថបទខាងលើ</p>
						</div>
					</div>
					<!-- end col -->
				</div>

				<div id="owl-similar" class="owl-custom">
					<div class="owl-featured">
						<div class="shop-item-list entry">
							<div class="">
								<img
									src="${pageContext.request.contextPath}/resources/static/front-end/upload/course_01.png"
									alt="">
								<div class="magnifier"></div>
							</div>
							<div class="shop-item-title clearfix">
								<h4>
									<a href="course-single.html">Learn Web Design & Development</a>
								</h4>
								<div class="shopmeta">
									<span class="pull-left">12 views</span>
									<div class="pull-right">
										<span class="pull-left"><i
											class="fa fa-thumbs-o-up text-primary"></i>102 Likes</span>
									</div>
								</div>
							</div>
							<div class="visible-buttons">
								<a href="#"><span class="fa fa-eye" title="ចូលមើលអត្ថបទនេះ"></span></a>
								<a href="#"><span class="fa fa-share"
									title="ចែករំលែកបន្តនូវអត្ថបទមួយនេះ"></span></a>
							</div>
						</div>
						<!-- end relative -->
					</div>
					<!-- end col -->

					<div class="owl-featured">
						<div class="shop-item-list entry">
							<div class="">
								<img
									src="${pageContext.request.contextPath}/resources/static/front-end/upload/course_02.png"
									alt="">
								<div class="magnifier"></div>
							</div>
							<div class="shop-item-title clearfix">
								<h4>
									<a href="course-single.html">Graphic Design & Logo Mockups
										Course</a>
								</h4>
								<div class="shopmeta">
									<span class="pull-left">12 views</span>
									<div class="pull-right">
										<span class="pull-left"><i
											class="fa fa-thumbs-o-up text-primary"></i>102 Likes</span>
									</div>
								</div>
							</div>
							<div class="visible-buttons">
								<a href="#"><span class="fa fa-eye" title="ចូលមើលអត្ថបទនេះ"></span></a>
								<a href="#"><span class="fa fa-share"
									title="ចែករំលែកបន្តនូវអត្ថបទមួយនេះ"></span></a>
							</div>
						</div>
					</div>

					<div class="owl-featured">
						<div class="shop-item-list entry">
							<div class="">
								<img
									src="${pageContext.request.contextPath}/resources/static/front-end/upload/course_03.png"
									alt="">
								<div class="magnifier"></div>
							</div>
							<div class="shop-item-title clearfix">
								<h4>
									<a href="course-single.html">Social Media Network &
										Marketing</a>
								</h4>
								<div class="shopmeta">
									<span class="pull-left">12 views</span>
									<div class="pull-right">
										<span class="pull-left"><i
											class="fa fa-thumbs-o-up text-primary"></i>102 Likes</span>
									</div>
								</div>
								<!-- end shop-meta -->
							</div>
							<div class="visible-buttons">
								<a href="#"><span class="fa fa-eye" title="ចូលមើលអត្ថបទនេះ"></span></a>
								<a href="#"><span class="fa fa-share"
									title="ចែករំលែកបន្តនូវអត្ថបទមួយនេះ"></span></a>
							</div>
						</div>
					</div>
					<!-- end col -->

					<div class="owl-featured">
						<div class="shop-item-list entry">
							<div class="">
								<img
									src="${pageContext.request.contextPath}/resources/static/front-end/upload/course_04.png"
									alt="">
								<div class="magnifier"></div>
							</div>
							<div class="shop-item-title clearfix">
								<h4>
									<a href="course-single.html">WordPress Blogging, Tumblr and
										Blogger</a>
								</h4>
								<div class="shopmeta">
									<span class="pull-left">12 views</span>
									<div class="pull-right">
										<span class="pull-left"><i
											class="fa fa-thumbs-o-up text-primary"></i>102 Likes</span>
									</div>
								</div>
								<!-- end shop-meta -->
							</div>
							<div class="visible-buttons">
								<a href="#"><span class="fa fa-eye" title="ចូលមើលអត្ថបទនេះ"></span></a>
								<a href="#"><span class="fa fa-share"
									title="ចែករំលែកបន្តនូវអត្ថបទមួយនេះ"></span></a>
							</div>
						</div>
					</div> --%>
			</div>
	</div>
	</section>
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
	</div>
	<!-- end wrapper -->
	<!-- including js from include/front-end/js-include.jsp -->
	<jsp:include page="../include/front-end/js-include.jsp"></jsp:include>
</body>
</html>