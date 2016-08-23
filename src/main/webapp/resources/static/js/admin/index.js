	var app = angular.module('index', ["datatables"]);
	
	// create controller
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


