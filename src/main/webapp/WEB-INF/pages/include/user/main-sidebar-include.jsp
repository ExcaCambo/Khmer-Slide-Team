<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="user" ng-controller="sessoinCtrl">
	<div id="esp-user-profile" data-percent="100"
		style="height: 130px; width: 130px; line-height: 100px; padding: 15px;"
		class="easy-pie-chart">
		<img
			src="{{ urls }}{{ photo }}"
			alt="" class="avatar img-circle"><span
			class="status bg-success"></span>
	</div>
	<h4 class="fs-16 text-muted mt-15 mb-5 fw-300">{{ txtName }}</h4>
	<p class="mb-0 text-muted">User</p>
</div>
<ul class="list-unstyled navigation mb-0">
	<li class="sidebar-category pt-0">Main</li>
	<li><a href="index" class="bubble active"><i class="ti-home"></i><span
			class="sidebar-title">ទំព័រដើម</span></a></li>
	<li class="panel"><a href="my-document" ><i class="ti-bookmark-alt"></i><span 
		class="sidebar-title">គ្រប់គ្រងឯកសារ</span></a>
	</li>
	<li class="panel"><a href="history"><i class="fa fa-history"></i><span
			class="sidebar-title">ឯកសារដែលធ្លាប់បានអាន</span></a>
	</li>
	<li class="sidebar-category pt-0">Library</li>
	<li class="panel"><a href="save-list"><i class="ti-menu-alt"></i><span
			class="sidebar-title">វិទ្យាសាស្ត្រកុំព្យូទ័រ</span></a>
	</li>
	<li class="panel"><a href="#"><i class="ti-menu-alt"></i><span
			class="sidebar-title">សុខភាព</span></a>
	</li>
	
</ul>
