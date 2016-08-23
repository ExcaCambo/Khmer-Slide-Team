var app = angular.module('userList', [ "datatables" ]);
//create controller
app.controller('sessoinCtrl', function($scope, $filter, $http, $sce) {
	$scope.user = '';
//$scope.urls = $sce.trustAsResourceUrl("http://192.168.178.152:9999");
$scope.urls = $sce.trustAsResourceUrl("http://192.168.1.104:9999");
//================================= User By ID Function=================================
$scope.Admin = adminId;

$scope.User = function(id) {
	$http({
		url : '/rest/user/' + id + '',
		method : 'GET'
	}).then(function(response) {
		//console.log(response);
		$scope.user = response.data.DATA[0];
		$scope.USER_ID = $scope.user.USER_ID;
		$scope.txtName = $scope.user.USER_NAME;
		$scope.photo = $scope.user.PHOTO;
		$scope.role = $scope.user.ROLE.ROLE_ID;
		
	}, function() {
		
	});
}
$scope.User(adminId);
});

// create controller
app.controller('userListCtrl', function($scope, $filter, $http,
		DTOptionsBuilder, $location, $sce) {
	$scope.user = '';
//	$scope.urls = $sce.trustAsResourceUrl("http://192.168.178.152:9999");
	$scope.urls = $sce.trustAsResourceUrl("http://192.168.1.104:9999");
	$scope.submitForm = function() {

		// check to make sure the form is completely valid
		if ($scope.insertForm.$valid) {
			swal({
              title: "បញ្ចូលទិន្នន័យ",
              text:  "ទិន្នន័យត្រូវបានបញ្ចូលបានសម្រាច់",
              type: "success",
              timer: 3000,
              showConfirmButton: false
          });
      window.setTimeout(function(){ } ,3000);
			// $scope.insert();
		}

	};

// 	=================================DataTables configurable options for Table User=================================
	$scope.dtOptions = DTOptionsBuilder.newOptions().withLanguage({
		lengthChange : !1,
		pageLength : 5,
		colReorder : !0,
		lengthMenu : "បង្ហាញ _MENU_ ស្ថិតិក្នុងមួយទំព័រ",
		paginate : {
			"previous" : "ថយក្រោយ",
			"next" : "បន្ទាប់",
			"first" : "ដំបូង",
			"last" : "ចុងក្រោយ"
		},
		info : "បង្ហាញទំព័រទី _PAGE_ នៃ _PAGES_ ដែលជាទំព័រសរុប",
		search : "",
		searchPlaceholder : "ស្វែងរក..."
	});

	$scope.list = function() {
		$http({
			url : '/rest/user',
			method : 'GET'
		}).then(function(repsonse) {
			// console.log(repsonse);
			$scope.user = repsonse.data.DATA;
		}, function() {

		});
	}

	$scope.list();

//	=================================Add User Function=================================
	$scope.role = function(roleId) {
		$scope.usertype = roleId;
	}
	$scope.status = 1;
	$scope.photo = "/resources/static/img/users/default-user-image.png";
	$scope.date = $filter('date')(new Date(), 'dd-MMM-yyyy');
	$scope.insert = function() {
		$http({
			url : '/rest/user',
			data : {
				"user_name" : $scope.txtName,
				"gender" : $scope.ddlGender,
				"email" : $scope.txtEmail,
				"password" : $scope.txtPassword,
				"photo" : $scope.photo,
				"registered_date" : $scope.date,
				"status" : $scope.status,
				"role_id" : $scope.usertype
			},
			method : 'POST'
		}).then(function() {
			// console.log(respsonse.data);
			$scope.txtName = '';
			$scope.ddlGender = '';
			$scope.txtEmail = '';
			$scope.txtPassword = '';
			$scope.txtConfirmPassword = '';
			$scope.list();
		}, function() {
			swal({
				  title: "បរាជ័យ",
				  text: "សូមអភ័យទិន្នន័យដែលលោកអ្នកព្យាយាមបញ្ចូលគឺមិនបានជោគជ័យទេ, សូមទំនាក់ទំនងទៅកាន់ក្រុមវិស្វករជំនាញ",
				  type: "warning",
				  timer: 3000,
				  showCancelButton: false,
				  closeOnConfirm: false
				});
				window.setTimeout(function(){ } ,3000);
		});
	}

	
//	=================================Edit User Function=================================
	$scope.update = function(id) {
		$http({
			url : '/rest/user/' + id + '',
			method : 'GET'
		}).then(function(response) {
			$scope.user = response.data.DATA[0];
			$scope.USER_ID = $scope.user.USER_ID;
			$scope.txtName = $scope.user.USER_NAME;
			$scope.ddlStatus = $scope.user.STATUS + '';
			$scope.ddlGender = $scope.user.GENDER;
			$scope.txtPassword = $scope.user.PASSWORD;
			$scope.ddlRole = $scope.user.ROLE.ROLE_ID + '';
			
		}, function() {
			
		});
	}
	// Get Path Variable from URL
	var url = $location.absUrl();
	var userId = url.substr(url.lastIndexOf("/") + 1);
	$scope.update(userId);

	$scope.submit = function() {
		$http({
			url : '/rest/user/',
			data : {
				"user_id" : $scope.USER_ID,
				"user_name" : $scope.txtName,
				"gender" : $scope.ddlGender,
				"password" : $scope.txtPassword,
				"status" : $scope.ddlStatus,
				"role_id" : $scope.usertype
			},
			method : 'PUT'
		}).then(function(response) {
			console.log(response);
			swal({
	              title: "កំណែប្រែទិន្នន័យ",
	              text:  "ទិន្នន័យត្រូវបានកែប្រែបានសម្រាច់",
	              type: "success",
	              timer: 3000,
	              showConfirmButton: false
	          });
			window.setTimeout(function(){ } ,3000);
			window.location.href = "/admin/user-list";
		}, function() {
			swal({
				  title: "បរាជ័យ",
				  text: "សូមអភ័យទិន្នន័យដែលលោកអ្នកព្យាយាមធ្វើកំណែប្រែគឺមិនបានជោគជ័យទេ, សូមទំនាក់ទំនងទៅកាន់ក្រុមវិស្វករជំនាញ",
				  type: "warning",
				  timer: 3000,
				  showCancelButton: false,
				  closeOnConfirm: false,
				  showConfirmButton: false
				});
				window.setTimeout(function(){ } ,3000);
		});
	}

	
//	=================================Delete user Function==================================
	$scope.remove = function(id) {
		swal({
			title : "ពិតជាចង់ធ្វើការលុបទិន្នន័យនេះមែន?",
			// text : "You will not be able to recover this data!",
			type : "warning",
			showCancelButton : true,
			confirmButtonColor : "#DD6B55",
			confirmButtonText : "បាទ/ចាស, លុប",
			timer: 3000,
			cancelButtonText : "បោះបង់",
			closeOnConfirm : true,
			closeOnCancel : true
		}, function(isConfirm) {

			if (isConfirm) {
				$http({
					url : '/rest/user/status',
					data : {
						user_id : id,
						status : 3,
					// AGE: $scope.upAge
					},
					method : 'PUT'
				}).then(function(repsonse) {

					$scope.list();
				}), (function() {

				});
				swal({
		              title: "លុប",
		              text:  "ទិន្នន័យបានលុបរួចរាល់",
		              type: "success",
		              timer: 3000,
		              showConfirmButton: false
		          });
				window.setTimeout(function(){ } ,3000);
			} else {
//				swal("បោះបង់", "ទិន្នន័យរបស់អ្នកមានសុវត្ថិភាពដូចដើម :)",
//						"error");
			}
		})
	}
});


