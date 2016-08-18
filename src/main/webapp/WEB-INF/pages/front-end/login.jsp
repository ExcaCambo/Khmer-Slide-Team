<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- including style from include/front-end/css-include.jsp -->
<jsp:include page="../include/front-end/css-include.jsp"></jsp:include>
</head>
<body class="login">

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
		<div class="container">
			<div class="row login-wrapper">
				<div class="col-md-6 col-md-offset-3">
					<div class="logo logo-center">
						<a href="index.html"><img
							src="${pageContext.request.contextPath}/resources/static/front-end/img/login-logo.png"
							alt=""></a>
					</div>
					<div class="panel panel-login">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-6">
									<a href="course-login.html#" class="active"
										id="login-form-link">ចូលប្រើតាមរយៈគណនី KhmerSLIDE</a>
								</div>
								<div class="col-xs-6">
									<a href="course-login.html#" id="register-form-link">ចូលតាមរយៈគណនី
										Facebook</a>
								</div>
							</div>
							<hr>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-lg-12">
									<form action="login" id="frmLogin" method="POST" method="post"
										role="form" style="display: block;">
										<div class="form-group">
											<input type="text" name="username" id="username" tabindex="1"
												class="form-control" placeholder="ឈ្មោះអ្នកប្រើប្រាស់"
												value="">
										</div>
										<div class="form-group">
											<input type="password" name="password" id="password"
												tabindex="2" class="form-control" placeholder="លេខសម្ងាត់">
										</div>
										<!-- <div class="form-group text-center">
                                        <input type="checkbox" tabindex="3" class="" name="remember" id="remember">
                                        <label for="remember">  &nbsp; Remember Me</label>
                                    </div> -->
										<div class="form-group">
											<div class="row">
												<div class="col-sm-12">
													<button type="submit" class="form-control btn btn-default">ចូលប្រើប្រាស់</button>
												</div>
											</div>
										</div>
										<div class="form-group">
											<div class="row">
												<div class="col-lg-12">
													<div class="text-center">
														<a href="#" tabindex="5" class="forgot-password">មិនចងចាំលេខសម្ងាត់?</a>
													</div>
												</div>
											</div>
										</div>
									</form>
									<form id="register-form" action="#" method="post" role="form"
										style="display: none;">
										<div class="form-group">
											<div class="row">
												<div class="col-sm-12">
													<button type="submit"
														class="form-control btn btn-default btn-block">ចុចទីនេះដើម្បីប្រើប្រាស់តាមរយៈគណនី
														Facebook</button>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#frmLogin")
					.submit(
							function(e) {
								e.preventDefault();

								$
										.ajax({
											url : "${pageContext.request.contextPath}/login",
											type : "POST",
											data : $("#frmLogin").serialize(),
											//   	            beforeSend: function (xhr) {
											//   	                xhr.setRequestHeader("X-Ajax-call", "true");
											//   	            },
											success : function(data) {
												alert(data);
												if (data == 9999) {
													alert("PLEASE LOGIN AGAIN");
												} else {
													location.href = "${pageContext.request.contextPath}"
															+ data;
												}

												//console.log(data);
												/* if(data == "User account is locked")
												{
													alert(data);
												}
												else if(data == "User is disabled")
												{
													alert(data);
												}
												else if(data == "Bad credentials")
												{
													alert(data);
												}else{
													alert("Logined success.");
													location.href = "${pageContext.request.contextPath}/"+data;
													console.log(data);
												} */

											},
											error : function(data) {
												console.log(data);
											}
										});
								/* end ajax */
							});
			/* end fuction submit */

		});
		/* end function */
	</script>


	<!-- end wrapper -->
	<!-- including js from include/front-end/js-include.jsp -->
	<jsp:include page="../include/front-end/js-include.jsp"></jsp:include>
</body>
</html>