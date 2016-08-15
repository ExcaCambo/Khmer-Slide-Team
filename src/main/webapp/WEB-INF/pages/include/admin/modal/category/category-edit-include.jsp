<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="col-md-3 col-sm-6" >
	<div tabindex="-1" role="dialog"
		aria-labelledby="myAnimationModalLabel"
		class="modal animated fadeInLeft modalEdit">
		<div role="document" class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" data-dismiss="modal" aria-label="Close"
						class="close">
						<span aria-hidden="true"><i class="ti-close"></i></span>
					</button>
					<h3 id="myAnimationModalLabel"
						class="modal-title text-primary text-center">កំណែប្រែពត៌មានរបស់មីនុយ</h3>
				</div>
				<div class="modal-body" >
					<div class="row">
						<div class="col-md-12">
							<div class="widget">
								<div class="widget-body">
									<form id="form-vertical" method="post" novalidate="novalidate">
										<div class="col-md-12">
											<div class="form-group">
												<label for="txtCatName">ឈ្មោះមីនុយ</label><label
													class="text-danger"> *</label> <input id="txtCatName"
													type="text" name="txtCatName"
													 class="form-control" ng-model="txtCatName">
											</div>
											<div class="form-group">
												<label for="ddlCategory">ស្ថិតក្រោមមីនុយ</label> 
												<select id="ddlCategory" name="ddlCategory" ng-model="ddlCategory" class="form-control" ng-option="cate.PARENT_ID as cate.CAT_NAME for cate in categoryList">
													<option value="" >-- សូមធ្វើការជ្រើសរើស --</option>
													<!-- <option value="{{ddlCategory}}" selected="selected" ng-repeat="CAT in categoryList">{{CAT.CAT_NAME}}</option> -->
													
												</select>
											</div>
											<div class="form-group">
												<label for="ddlStatus">ស្ថានភាព</label><label
													class="text-danger"> *</label> <select id="ddlStatus"
													name="ddlStatus" ng-model = "ddlStatus" data-rule-required="true"
													class="form-control">
													<option value="">-- សូមធ្វើការជ្រើសរើស --</option>
													<option value="1">ដំណើរការ</option>
													<option value="2">មិនដំណើរការ</option>
												</select>
											</div>
											<div class="form-group">
												<textarea id="txtDescription" name="txtDescription"
													class="form-control" placeholder="ពត៌មានបន្ថែម"></textarea>
											</div>
											<div class="form-group">
												<input id="txtCreateDate" type="hidden" name="txtCreateDate"
													class="form-control">
											</div>
											<div class="form-group">
												<input id="txtCreateBy" type="hidden" name="txtCreateBy"
													class="form-control">
											</div>
										</div>
										<div class="text-right">
											<button type="button" data-dismiss="modal"
												class="btn btn-raised btn-danger">
												<i class="ti-close"></i> បោះបង់
											</button>
											<button type="submit" name="btnSubmit"
												class="btn btn-raised btn-success">
												<i class="ti-pencil"></i> កែប្រែ
											</button>
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
</div>