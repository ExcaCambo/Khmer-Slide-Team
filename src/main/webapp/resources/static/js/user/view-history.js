var app = angular.module('history', []);

//=============================Session================================================
//create controller
app.controller('sessoinCtrl', function($scope, $filter, $http, $sce) {
	$scope.user = '';
//$scope.urls = $sce.trustAsResourceUrl("http://192.168.178.152:9999");
$scope.urls = $sce.trustAsResourceUrl("http://192.168.1.104:9999");
//================================= User By ID Function=================================

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
$scope.User(userId);
});

	//create controller
	app.controller('viewhistoryListCtrl', function ($scope, $http, $sce) {
		$scope.viewhistory = '';
		$scope.urls = $sce.trustAsResourceUrl("http://192.168.178.152:9999");
//		$scope.urls = $sce.trustAsResourceUrl("http://192.168.1.104:9999");
			$scope.list = function(){
				$http({
				url: '/rest/view-history',
				method: 'GET'
			}).then(function(repsonse){
				console.log(repsonse);
				$scope.viewhistory=repsonse.data.DATA;
			}, function(){

			});
			}

			$scope.list();
});