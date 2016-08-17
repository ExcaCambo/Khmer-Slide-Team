<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header class="header">
	<div class="container">
		<div class="hovermenu ttmenu">
			<div class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="fa fa-bars"></span>
					</button>
					<div class="logo">
						<a class="navbar-brand" href="index.html"><img
							src="${pageContext.request.contextPath}/resources/static/front-end/img/Orange_view logo_50.png"
							alt=""></a>
					</div>
				</div>
				<!-- end navbar-header -->
				<form class="search-form pull-left hidden-xs">
					<div class="form-group has-feedback mb-0">
						<input type="text" aria-describedby="inputSearchFor"
							placeholder="ស្វែងរក..." style="width: 350px"
							class="form-control rounded"><span aria-hidden="true"
							class="fa fa-search form-control-feedback"></span><span
							id="inputSearchFor" class="sr-only">(default)</span>
					</div>
				</form>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="index"><i class="fa fa-home"></i>ទំព័រដើម</a></li>
						<li class="dropdown ttmenu-half"><a href="index9.html#"
							data-toggle="dropdown" class="dropdown-toggle"><i
								class="fa fa-list-ul"></i> មីនុយ <b class="fa fa-angle-down"></b></a>
							<ul class="dropdown-menu">
								<li>
									<div class="ttmenu-content">
										<div class="row">
											<div class="col-md-12">
												<div class="box">
													<ul>
														<li><a href="/category/search-category">ការអប់រំកម្រឺតវិទ្យាល័យ</a></li>
														<li><a href="#">វិទ្យាសាស្ត្រកុំព្យូទ័រ</a></li>
														<li><a href="#">ជំនាញឯកទេស</a></li>
														<li><a href="#">ភាសាសាស្ត្រ</a></li>
														<li><a href="#">វប្បធម៍ និង សិល្បៈ</a></li>
														<li><a href="#">សង្គម</a></li>
														<li><a href="#">កសិកម្ម</a></li>
														<li><a href="#">ការកំសាន្ត</a></li>
													</ul>
												</div>
												<!-- end box -->
											</div>
											<!-- end col -->
										</div>
										<!-- end row -->
									</div>
									<!-- end ttmenu-content -->
								</li>
							</ul></li>
						<!-- end mega menu -->
						<li><a href="#"><i class="fa fa-info-circle"></i> អំពីយើង</a></li>
						<li><a href="#"><i class="fa fa-mobile"></i> ទំនាក់ទំនង</a></li>
						<li><a href="/login"><i class="fa fa-sign-in"></i> គណនី</a></li>
					</ul>
					<!-- end nav navbar-nav -->
				</div>
				<!--/.nav-collapse -->
			</div>
			<!-- end navbar navbar-default clearfix -->
		</div>
		<!-- end menu 1 -->
	</div>
	<!-- end container -->
</header>
<!-- end header -->