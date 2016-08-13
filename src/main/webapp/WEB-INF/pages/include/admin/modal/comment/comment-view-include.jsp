<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="col-md-3 col-sm-6">
	<div tabindex="-1" role="dialog"
		aria-labelledby="myAnimationModalLabel"
		class="modal animated fadeInLeft modalView">
		<div role="document" class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" data-dismiss="modal" aria-label="Close"
						class="close">
						<span aria-hidden="true"><i class="ti-close"></i></span>
					</button>
					<h4 id="myAnimationModalLabel" class="modal-title text-primary text-center">ពត៌មានលម្អិតពីយោបល់របស់អ្នកប្រើប្រាស់</h4>
				</div>
				<div class="modal-body" ng-app="commentList" ng-controller="commentListCtrl">
					<div class="row" ng-repeat="c in comment">
						<div class="col-sm-12">
							<p>ចំណងជើងឯកសារ: {{c.DOC_ID.DOC_TITLE}}</p>
							<p>បញ្ចេញយោបល់ដោយ: {{c.USER_ID.USER_NAME}}</p>
							<p>នៅថ្ងៃទី: {{c.CMT_DATE}}</p>
							<p>ស្ថានភាព: ដំណើរការ</p>
							<p>ពត៌មានផ្សេងៗ:{{c.DISCRIPTION}}</p>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" data-dismiss="modal"
						class="btn btn-raised btn-danger">
						<i class="ti-close"></i> បោះបង់
					</button>
				</div>
			</div>
		</div>
	</div>
</div>