<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
<!-- including style from include/front-end/css-include.jsp -->
<jsp:include page="../include/front-end/category/category-css-include.jsp"></jsp:include>


</head>
<body id="" class="" data-view="app" data-responsive="true"
	data-user-signed-in="false">

	<div id="loader">
		<div class="loader-container">
			<img
				src="${pageContext.request.contextPath}/resources/static/front-end/img/site.gif"
				alt="" class="loader-site">
		</div>
	</div>

	<div id="wrapper">
		<!-- including header from include/front-end/header-include.jsp -->
		<jsp:include page="../include/front-end/category/category-header-include.jsp"></jsp:include>
		

		<section class="white section">
			<div class="container">
				<div class="row">
					<div id="course-left-sidebar" class="col-md-3">
						<div class="sidebar-s -size-fixed-tablet is-hidden-phone">
							<form accept-charset="UTF-8" action="/search"
								class="js-facet-form" data-pjax="" data-view="facetingControls"
								id="searchFacets" method="get">
								<div style="margin: 0; padding: 0; display: inline">
									<input name="utf8" type="hidden" value="&#x2713;" />
								</div>
								<div class="search-facet-panel" data-view="searchFacetPanel">
									<div class="search-facet-refine">លទ្ធផលនៃការស្វែងរករបស់អ្នក:</div>
									<input id="term" name="term" type="hidden" /> <input
										class="js-autosuggest__analytics-param" disabled="disabled"
										name="as" type="hidden" /> <input
										class="js-autosuggest__term-type-param" disabled="disabled"
										name="type" type="hidden" /> <input name="referrer"
										type="hidden" value="search" />
										
									<div class="search-facet">
                                                <div class="search-facet-actives__remove-all">
                                                    Your filters: <a data-pjax="" href="/index">Clear all</a>
                                                </div>

                                                <div class="search-facet-actives__facet-wrapper">
                                                    <ul class="search-facet-actives__facet-categories-list">
                                                        <li>
                                                            <div class="search-facet-actives__facet">
                                                                <span class="search-facet-actives__icon">
                                                                     <i class="fa fa-folder-o"></i>
                                                                </span>
                                                                <span class="search-facet-actives__text">ការអប់រំកម្រឹតវិទ្យាសាស្ត្រ</span>
                                                                <a class="search-facet-actives__glyph-cancel"
                                                                   data-description="Site Templates" data-pjax=""
                                                                   href="/index">
                                                                    <i class="e-icon -icon-cancel"></i>
                                                                </a></div>
                                                        </li>
                                                        <li>
                                                            <div class="search-facet-actives__facet">
                                                                <span class="search-facet-actives__icon">
                                                                     <i class="fa fa-folder-o"></i>
                                                                </span>
                                                                <span class="search-facet-actives__text">គណិតវិទ្យា</span>
                                                                <a class="search-facet-actives__glyph-cancel"
                                                                   data-description="Site Templates" data-pjax=""
                                                                   href="/index">
                                                                    <i class="e-icon -icon-cancel"></i>
                                                                </a></div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>

									<div class="search-facet">
										<div class="search-facet--no-margin">
											<div
												class="js-search-facet-panel__header search-facet-panel__header--start">
												<h2 data-title="Category">
													<i class="e-icon -icon-list -margin-right"></i>មីនុយ
												</h2>
												<ul class="search-facet-listing">
													<li>
														<div class="search-facet-listing__link">
															<span class="search-facet-listing__label">ការអប់រំកម្រឹតវិទ្យាល័យ</span>
															<span class="search-facet-result-count">7332</span>
														</div>
													</li>
													<li>
														<div class="search-facet-listing__link">
															<span class="search-facet-listing__label">វិទ្យាសាស្ត្រកុំព្យូទ័រ</span>
															<span class="search-facet-result-count">6832</span>
														</div>
													</li>
												</ul>

											</div>

											<div
												class="js-search-facet-panel__body search-facet-panel__body  is-visually-hidden--js">
												<div class="search-facet-panel__body-inner">
													<button
														class="js-search-facet-panel__body-close search-facet-panel__body-close">
														<i class="e-icon -icon-cancel"> <span
															class="e-icon__alt">បោះបង់</span>
														</i>
													</button>
													<div class="search-facet-panel__breadcrumbs-wrapper">
														<div class="search-facet-panel__breadcrumbs-intro">
															<span class="t-body -size-m">បង្ហាញ:</span>
														</div>
														<div class="search-facet-panel__breadcrumbs">
															<nav
																class="breadcrumbs -line-wrap -color-grey -icon-fill h-text-truncate">
																<a data-pjax="" href="all.html" rel="nofollow">
																	មីនុយទាំងអស់ <span class="breadcrumbs__count">24610</span>
																</a>
															</nav>
														</div>
													</div>

													<ul class="search-facet-single-select-in-panel">

														<li class=""><a href="/search-category"
															rel="nofollow"
															style="min-width: 50%; width: calc(100.0% - 30px);">
																<div class="search-facet-single-select-panel__title">
																	<div
																		class="search-facet-single-select-panel__title-inner">
																		ការអប់រំកម្រឹតវិទ្យាល័យ</div>
																</div>
														</a>
															<div class="search-facet-single-select-panel__count">
																7,332</div></li>

														<li class="is-hidden js-collapsible"><a
															href="../search-category=forums.html" rel="nofollow"
															style="min-width: 50%; width: calc(0.37% - 30px);">
																<div class="search-facet-single-select-panel__title">
																	<div
																		class="search-facet-single-select-panel__title-inner">
																		វិទ្យាសាស្ត្រកុំព្យូទ័រ</div>
																</div>
														</a>
															<div class="search-facet-single-select-panel__count">
																27</div></li>

													</ul>
													<div
														class="js-search-facet-toggle search-facet-panel-toggle"
														data-view="facetTogglePanel">
														<a class="js-search-facet-toggle__link" href="all.html#">
															<span> <span class="e-icon -icon-preview"></span>
																<span class="search-facet-panel-toggle__remaining">
																	បង្ហាញមីនុយ 1 ដែលនៅសល់ </span>
														</span> <span>Hide options</span>
														</a>
														<div class="search-facet-panel__action">
															<button
																class="js-search-facet-panel__body-close e-btn--3d -color-primary -width-full">
																Done</button>
														</div>
													</div>
												</div>
											</div>
										</div>

										<div>
											<div class="search-facet-header">
												<h2>
													<i class="e-icon -icon-calendar -margin-right"></i><span>កាលបរិច្ឆេទបញ្ចូល</span>
												</h2>
											</div>

											<div
												class="group-select -border-top-none -border-radius-none">
												<label class="is-visually-hidden" for="sales">កាលបរិច្ឆេទបញ្ចូល</label>
												<select data-pjax="" id="sales" name="sales">
													<option selected="selected" value="">កាលបរិច្ឆេទ:
														ឆ្នាំមុន</option>
													<option value="rank-0">ខែមុន</option>
													<option value="rank-1">សប្តាហ៍មុន</option>
													<option value="rank-2">ថ្ងៃម្សិលមិញ</option>
													<option value="rank-3">ថ្ងៃនេះ</option>
												</select>
											</div>

										</div>

										<div class="search-facet">
											<!-- <div class="search-facet--no-margin"> -->
											<div
												class="js-search-facet-panel__header search-facet-panel__header--end">
												<h2 data-title="Software version">
													<i class="e-icon -icon-document -margin-right"></i>ប្រភេទឯកសារ
												</h2>


												<ul class="search-facet-listing">
													<li>
														<div class="search-facet-listing__link">
															<span class="search-facet-listing__label">MS
																PowerPoint</span> <span class="search-facet-result-count">6790</span>
														</div>
													</li>
													<li>
														<div class="search-facet-listing__link">
															<span class="search-facet-listing__label">PDF</span> <span
																class="search-facet-result-count">821</span>
														</div>
													</li>
												</ul>
											</div>

											<div
												class="js-search-facet-panel__body search-facet-panel__body  is-visually-hidden--js">
												<div class="search-facet-panel__body-inner">
													<button
														class="js-search-facet-panel__body-close search-facet-panel__body-close">
														<i class="e-icon -icon-cancel"> <span
															class="e-icon__alt">បោះបង់</span>
														</i>
													</button>
													<div class="search-facet-panel__breadcrumbs-wrapper">
														<div class="search-facet-panel__breadcrumbs-intro">
															<span class="t-body -size-m">បង្ហាញ:</span>
														</div>
														<div class="search-facet-panel__breadcrumbs">
															<nav
																class="breadcrumbs -line-wrap -color-grey -icon-fill h-text-truncate">
																<a data-pjax="" href="all.html" rel="nofollow">
																	បង្ហាញប្រភេទឯកសារទាំងអស់ <span
																	class="breadcrumbs__count">24610</span>
																</a>
															</nav>
														</div>
													</div>

													<ul class="search-facet-single-select-in-panel">
														<li class=""><a
															href="../search-platform=WordPress.html" rel="nofollow"
															style="min-width: 50%; width: calc(100.0% - 30px);">
																<div class="search-facet-single-select-panel__title">
																	<div
																		class="search-facet-single-select-panel__title-inner">
																		MS PowerPoint</div>
																</div>
														</a>
															<div class="search-facet-single-select-panel__count">
																6,790</div></li>

														<li class="is-hidden js-collapsible"><a
															href="../search-platform=Moodle.html" rel="nofollow"
															style="min-width: 50%; width: calc(0.29% - 30px);">
																<div class="search-facet-single-select-panel__title">
																	<div
																		class="search-facet-single-select-panel__title-inner">
																		PDF</div>
																</div>
														</a>
															<div class="search-facet-single-select-panel__count">
																20</div></li>

													</ul>

													<div
														class="js-search-facet-toggle search-facet-panel-toggle"
														data-view="facetTogglePanel">
														<a class="js-search-facet-toggle__link" href="all.html#">
															<span> <span class="e-icon -icon-preview"></span>
																<span class="search-facet-panel-toggle__remaining">
																	បង្ហាញមីនុយ 1 ដែលនៅសល់ </span>
														</span> <span>Hide options</span>
														</a>
														<div class="search-facet-panel__action">
															<button
																class="js-search-facet-panel__body-close e-btn--3d -color-primary -width-full">
																Done</button>
														</div>
													</div>
												</div>
											</div>
											<!-- </div> -->
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- end col -->

					<div id="course-content" class="col-md-9">
						<div class="course-table">
							<h4>អត្ថបទ</h4>
							<table class="table" id="doc-table">
								<thead>
									<!-- 									<tr>
										<th>Type</th>
										<th>Lesson Title</th>
										<th>Time</th>
										<th>Status</th>
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
										<td><a href="course-single.html#">Introduction</a></td>
										<td>12 Min</td>
										<td><i class="fa fa-check"></i></td>
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
										<td>Lesson One - What is Photoshop</td>
										<td>20 Min</td>
										<td><i class="fa fa-close"></i></td>
									</tr>
									<tr>
										<td>
											<div class="media-left">
												<a href="#"> <img
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
										<td>Lesson Two - How to Use Tools</td>
										<td>41 Min</td>
										<td><i class="fa fa-close"></i></td>
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
										<td>Lesson Three - Creating First Homepage</td>
										<td>15 Min</td>
										<td><i class="fa fa-close"></i></td>
									</tr>
									<tr>
										<td>
											<div class="media-left">
												<a href="#"> <img
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
										<td>Lesson Four - Understanding Colors</td>
										<td>29 Min</td>
										<td><i class="fa fa-close"></i></td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- end course-table -->

						<hr class="invis">

						<div id="reviews" class="feedbacks">
							<p>
								<a class="btn btn-default btn-block" role="button"
									href="#"><i class="fa fa-refresh"></i> ទាញបន្ថែម</a>
							</p>
						</div>
						<!-- end reviews -->
<%-- 						<div class="other-courses">
							<img
								src="${pageContext.request.contextPath}/resources/static/front-end/img/others.png"
								alt="" class="">
						</div> --%>
					</div>
					<!-- end col -->
				</div>
				<!-- end row -->
			</div>
			<!-- end container -->
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

	<!-- including js from include/front-end/js-include.jsp -->
	<jsp:include page="../include/front-end/js-include.jsp"></jsp:include>



	<script
		src="http://dmypbau5frl9g.cloudfront.net/assets/market/core/index-033b5427b56df3a606e88cb177b6f4a5.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/static/front-end/category/js/custom.js"
		type="text/javascript"></script>


	<script>
		$(function() {
			viewloader.execute(Views);
		});
	</script>



</body>
</html>