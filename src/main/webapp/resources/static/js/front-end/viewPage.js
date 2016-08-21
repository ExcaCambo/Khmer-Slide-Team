var app = angular.module('viewPage', []);

	//create controller
	app.controller('viewCtrl', function ($scope, $http, $filter, $location) {
		$scope.document = '';
		
//		=================================View Document Function=================================
		// Get Path Variable from URL
		var url = $location.absUrl();
		var doc = url.substr(url.lastIndexOf("=") + 1);
		$scope.docId(doc);
		$.console.log(doc);
		
		$scope.docId = function(id) {
			alert(id);
			$http({
				url : '/rest/document/' + id + '',
				method : 'GET'
			}).then(function(response) {
				console.log(response);
				$scope.document = response.data.DATA[0];
//				$scope.USER_ID = $scope.user.USER_ID;
//				$scope.txtName = $scope.user.USER_NAME;
//				$scope.ddlStatus = $scope.user.STATUS + '';
//				$scope.ddlGender = $scope.user.GENDER;
//				$scope.txtPassword = $scope.user.PASSWORD;
//				$scope.ddlRole = $scope.user.ROLE.ROLE_ID + '';
				
			}, function() {

			});
		}
		
		

//		$scope.submit = function() {
//			$http({
//				url : 'http://localhost:8080/rest/user/',
//				data : {
//					"user_id" : $scope.USER_ID,
//					"user_name" : $scope.txtName,
//					"gender" : $scope.ddlGender,
//					"password" : $scope.txtPassword,
//					"status" : $scope.ddlStatus,
//					"role_id" : $scope.usertype
//				// AGE: $scope.upAge
//				},
//				method : 'PUT'
//			}).then(function(response) {
//				console.log(response);
//				swal("កំណែប្រែ!", "ទិន្នន័យត្រូវបានកែប្រែបានសម្រាច់", "success");
//				window.location.href = "/admin/user-list";
//			}, function() {
//
//			});
//		}
			

});
	
