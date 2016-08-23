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
						<a class="navbar-brand" href="/index.ks"><img
							src="${pageContext.request.contextPath}/resources/static/front-end/img/logo.png"
							alt=""></a>
					</div>
				</div>

				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="/index.ks"><i class="fa fa-home"></i>ទំព័រដើម</a></li>
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

<section class="page-section -theme-themeforest"
	data-view="parallaxBackground">
	<div class="page-section__content">
		<div class="grid-container"​>
			<div class="h-text-align-center"​​​​​​ data-ng-controller="catCtrl">
				<h2 class="t-heading -size-xxl -color-light is-hidden-phone">
					24,60 អត្ថបទមាននៅក្នុង: {{ txtMainCategory  }}</h2>

				<h2
					class="t-heading -size-l -color-light is-hidden-tablet-and-above">
					{{ txtMainCategory  }}: 24,60 អត្ថបទ</h2>

				<h3
					class="t-heading -size-s -color-light -weight-normal h-mb3 is-hidden-phone">
					អាចស្វែងរកគ្រប់អត្ថបទទាំងអស់ដែលផ្អែកលើទិន្នន័យរបស់មីនុយមួយនេះ</h3>
				<h3
					class="t-heading -size-s -color-light -weight-normal h-mb2 is-hidden-tablet-and-above">
					អាចស្វែងរកអត្ថបទទាំងអស់ដែលផ្អែកលើទិន្នន័យ</h3>
				<div class="home-search__search">
					<form accept-charset="UTF-8" action="#" autocomplete="off"
						class="search-field -size-xl -border-none" id="search"
						method="get">
						<div style="margin: 0; padding: 0; display: inline">
							<input name="utf8" type="hidden" value="✓">
						</div>

						<div class="search-field__input">
							<input class="js-term search-field__input-field" name="term"
								placeholder="ឧទាហរណ៍: ភាសាខ្មែរ" type="search">
						</div>
						<button class="search-field__button" type="submit">
							<i class="e-icon -icon-search"><span class="e-icon__alt">Search</span></i>
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="js- page-section__background"
		style="transform: translate3d(0px, 142px, 0px);"></div>
</section>


<section class="white section nopaddingbottom">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="section-title text-center">
					<h4>មីនុយ</h4>
				</div>
			</div>
			<!-- end col -->
		</div>
		<!-- end row -->

		<div class="row" data-ng-controller="categoryCtrl">
			<div class="col-md-12">
				<div class="owl-featured">
					<data-owl-carousel class="owl-carousel"
						data-options="{navigation: false, pagination: true, rewindNav : false}">
					<div owl-carousel-item="" ng-repeat="i in categoryLength"
						class="item"
						ng-init="i = $parent.start; $parent.start=$parent.start+2;">
						<span ng-init="i=(i==null)?0:i"></span> <a
							href="/category/?cat={{ category[i].CAT_ID }}"
							title="{{ category[i].CAT_NAME }}">
							<div class="feature-list">
								<i class="{{ category[i].ICON }} alignleft"></i>
								<p>
									<a href="/category/?cat={{ category[i].CAT_ID }}"
										title="{{ category[i].CAT_NAME }}"> <strong>{{
											category[i].CAT_NAME }}</strong>
									</a>
								</p>
								<p>{{ category[i].DESCRIPTION }}</p>
							</div>
						</a> <a href="/category/?cat={{ category[i+1].CAT_ID }}"
							title="{{ category[i+1].CAT_NAME }}">
							<div class="feature-list">
								<i class="{{ category[i+1].ICON }} alignleft"></i>
								<p>
									<a href="/category/?cat={{ category[i+1].CAT_ID }}"
										title="{{ category[i+1].CAT_NAME }}"> <strong>{{
											category[i+1].CAT_NAME }}</strong>
									</a>
								</p>
								<p>{{ category[i+1].DESCRIPTION }}</p>
							</div>
						</a>
						<hr class="invis">
					</div>
					</data-owl-carousel>
				</div>
			</div>
		</div>
		<!-- end row -->
		<br>
	</div>
	<!-- end container -->
</section>
<!-- end section -->
