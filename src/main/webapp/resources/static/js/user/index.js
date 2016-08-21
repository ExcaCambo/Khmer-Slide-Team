var app = angular.module('documentList', []);

	//create controller
	app.controller('documentListCtrl', function ($scope, $http, $sce) {
		$scope.document = '';
//		$scope.urls = $sce.trustAsResourceUrl("http://192.168.178.152:9999");
		$scope.urls = $sce.trustAsResourceUrl("http://192.168.1.104:9999");
			$scope.list = function(){
				$http({
				url: '/rest/document',
				method: 'GET'
			}).then(function(repsonse){
				console.log(repsonse);
				$scope.document=repsonse.data.DATA;
			}, function(){
			});
			}

			$scope.list();
});