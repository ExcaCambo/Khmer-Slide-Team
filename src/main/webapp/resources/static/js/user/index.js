var app = angular.module('documentList', []);

	//create controller
	app.controller('documentListCtrl', function ($scope, $http) {
		$scope.document = '';
			$scope.list = function(){
				$http({
				url: 'http://localhost:8080/rest/document',
				method: 'GET'
			}).then(function(repsonse){
				console.log(repsonse);
				$scope.document=repsonse.data.DATA;
			}, function(){
			});
			}

			$scope.list();
});