var app = angular.module('history', []);

	//create controller
	app.controller('viewhistoryListCtrl', function ($scope, $http, $sce) {
		$scope.viewhistory = '';
//		$scope.urls = $sce.trustAsResourceUrl("http://192.168.178.152:9999");
		$scope.urls = $sce.trustAsResourceUrl("http://192.168.1.104:9999");
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