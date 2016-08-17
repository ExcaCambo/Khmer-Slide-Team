var app = angular.module('history', []);

	//create controller
	app.controller('viewhistoryListCtrl', function ($scope, $http) {
		$scope.viewhistory = '';
			$scope.list = function(){
				$http({
				url: 'http://localhost:8080/rest/view-history',
				method: 'GET'
			}).then(function(repsonse){
				console.log(repsonse);
				$scope.viewhistory=repsonse.data.DATA;
			}, function(){

			});
			}

			$scope.list();
});