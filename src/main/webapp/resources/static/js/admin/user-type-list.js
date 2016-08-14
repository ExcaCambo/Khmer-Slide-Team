var userTypeList = angular.module('userTypeList', ["datatables"]);

	//create controller
	userTypeList.controller('userTypeListCtrl', function ($scope, $http, DTOptionsBuilder) {
		$scope.userType = '';
		
		// DataTables configurable options
	    $scope.dtOptions = DTOptionsBuilder.newOptions()
	        .withOption('lengthChange', false)
	        .withOption('bFilter', false)
	        .withOption('paging', false)
	        .withOption('info', false);


			$scope.list = function(){
				$http({
				url: 'http://localhost:8080/rest/user-type',
				method: 'GET'
			}).then(function(repsonse){
				// console.log(repsonse);
				$scope.userType=repsonse.data.DATA;
			}, function(){

			});
			}

			$scope.list();
});
	angular.module("CombineModule", ["userList", "userTypeList"]);
	

	
	