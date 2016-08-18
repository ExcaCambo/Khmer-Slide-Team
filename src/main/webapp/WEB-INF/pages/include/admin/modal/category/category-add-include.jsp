<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="col-md-3 col-sm-6">
	<div tabindex="-1" role="dialog"
		aria-labelledby="myAnimationModalLabel"
		class="modal animated fadeInLeft modalAdd">
		<div role="document" class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" data-dismiss="modal" aria-label="Close"
						class="close">
						<span aria-hidden="true"><i class="ti-close"></i></span>
					</button>
					<h3 id="myAnimationModalLabel"
						class="modal-title text-primary text-center">បញ្ចូលមីនុយថ្មី្មី</h3>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-12">
							<div class="widget">
								<div class="widget-body">
									<form id="form-vertical" method="post" novalidate="novalidate">
										<div class="col-md-12">
											<div class="form-group">
												<label for="txtCatName">ឈ្មោះមីនុយ</label><label
													class="text-danger"> *</label> <input id="txtCatName"
													type="text" name="txtCatName" ng-model="txtCatName"
													placeholder="Enter category name" data-rule-required="true"
													data-rule-rangelength="[3,30]" class="form-control">
											</div>
											<div class="form-group">
												<label for="ddlCategory">ស្ថិតក្រោមមីនុយ</label> <select
													id="ddlCategory" name="ddlCategory" class="form-control" ng-model="ddlCategory" ng-change="categ(ddlCategory)" >
													<option value="">-- សូមធ្វើការជ្រើសរើស --</option>
													<option value="{{ca.CAT_ID}}, {{ca.FOLDER}}" data-ng-repeat="ca in category">{{ca.CAT_NAME}}</option>
												</select>
											</div>
											<div class="form-group">
												<label for="ddlIcon">អាយខុនតំណាង</label>
<label class="text-danger"> *</label>
<select id="ddlIcon" name="ddlIcon" data-rule-required="true" ng-model="ddlIcon"
	class="form-control" style="font-family:'FontAwesome', Arial;">
	<option value="">-- សូមធ្វើការជ្រើសរើស --</option>
	<option value="fa fa-car">&#xf1b9; រថយន្ត
	</option>
	<option value="fa fa-balance-scale">&#xf24e; ជញ្ចីញ
	</option>
	<option value="fa fa-university">&#xf19c; សកលវិទ្យាល័យ
	</option>
	<option value="fa fa-bar-chart">&#xf080; ស្ថិតិ
	</option>
	<option value="fa fa-book" data-icon="fa-book">&#xf02d; សៀវភៅ
	</option>
	<option value="fa fa-briefcase"><span class="fa fa-briefcase"
			aria-hidden="true"></span> កាតាប
	</option>
	<option value="fa fa-building" class="fa fa-building"><i 
			aria-hidden="true"></i> អគារ
	</option>
	<option value="fa fa-calculator"><i class="fa fa-calculator"
			aria-hidden="true"></i> ម៉ាសីុនគិតលេខ
	</option>
	<option value="fa fa-calendar"><i class="fa fa-calendar"
			aria-hidden="true"></i> ប្រតិទិន
	</option>
	<option value="fa fa-camera"><i class="fa fa-camera"
			aria-hidden="true"></i> ម៉ាសីុនថតរូប
	</option>
	<option value="fa fa-code"><i class="fa fa-code"
			aria-hidden="true"></i> កូដ
	</option>
	<option value="fa fa-credit-card-alt"><i
			class="fa fa-credit-card-alt" aria-hidden="true"></i> កាតក្រេឌីត
	</option>
	<option value="fa fa-database"><i class="fa fa-database"
			aria-hidden="true"></i> ដែតាបែស
	</option>
	<option value="fa fa-desktop"><i class="fa fa-desktop"
			aria-hidden="true"></i> ដែសថប
	</option>
	<option value="fa fa-flask"><i class="fa fa-flask"
			aria-hidden="true"></i> គីមី
	</option>
	<option value="fa fa-film"><i class="fa fa-film"
			aria-hidden="true"></i> វីដេអូ
	</option>
	<option value="fa fa-picture-o"><i class="fa fa-picture-o"
			aria-hidden="true"></i> រូបភាព
	</option>
	<option value="fa fa-industry"><i class="fa fa-industry"
			aria-hidden="true"></i> រោងចក្រ
	</option>
	<option value="fa fa-language"><i class="fa fa-language"
			aria-hidden="true"></i> ភាសា
	</option>
	<option value="fa fa-money"><i class="fa fa-money"
			aria-hidden="true"></i> លុយ
	</option>
	<option value="fa fa-newspaper-o"><i class="fa fa-newspaper-o"
			aria-hidden="true"></i> កាសែត
	</option>
	<option value="a fa-recycle"><i class="fa fa-recycle"
			aria-hidden="true"></i> បរិស្ថាន
	</option>
	<option value="fa fa-server"><i class="fa fa-server"
			aria-hidden="true"></i> ម៉ាសីុនសឺវឺ
	</option>
	<option value="fa fa-server"><i class="fa fa-server"
			aria-hidden="true"></i> ណេតវឺក
	</option>
	<option value="fa fa-futbol-o"><i class="fa fa-futbol-o"
			aria-hidden="true"></i> កីឡា
	</option>
	<option value="fa fa-heartbeat"><i class="fa fa-heartbeat"
			aria-hidden="true"></i> សុខភាព
	</option>
</select>
											</div>
											<div class="form-group">
												<textarea id="txtDescription" name="txtDescription"
													class="form-control" placeholder="ពត៌មានបន្ថែម" ng-model="txtDescription"></textarea>
											</div>
											<div class="form-group">
												<input id="txtCreateDate" type="hidden" name="txtCreateDate"
													class="form-control" ng-model="txtCreateDate">
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
												class="btn btn-raised btn-success" ng-click="insert()" data-dismiss="modal">
												<i class="ti-save"></i> រក្សាទុក
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