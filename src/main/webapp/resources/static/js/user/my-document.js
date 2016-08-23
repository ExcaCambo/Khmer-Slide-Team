var app = angular.module('documentList', ["datatables"]);
//
////=============================Session================================================
////create controller
//app.controller('sessoinCtrl', function($scope, $filter, $http, $sce) {
//	$scope.user = '';
////$scope.urls = $sce.trustAsResourceUrl("http://192.168.178.152:9999");
//$scope.urls = $sce.trustAsResourceUrl("http://192.168.1.104:9999");
////================================= User By ID Function=================================
//
//$scope.User = function(id) {
//	$http({
//		url : '/rest/user/' + id + '',
//		method : 'GET'
//	}).then(function(response) {
//		//console.log(response);
//		$scope.user = response.data.DATA[0];
//		$scope.USER_ID = $scope.user.USER_ID;
//		$scope.txtName = $scope.user.USER_NAME;
//		$scope.photo = $scope.user.PHOTO;
//		$scope.role = $scope.user.ROLE.ROLE_ID;
//		
//	}, function() {
//		
//	});
//}
//$scope.User(userId);
//});
	//create controller
	app.controller('documentListCtrl', function ($scope, $http, DTOptionsBuilder) {
		$scope.document = '';
		// DataTables configurable options
	    $scope.dtOptions = DTOptionsBuilder.newOptions()
	        .withLanguage({
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

			$scope.list = function(){
				$http({
				url: '/rest/document',
				method: 'GET'
			}).then(function(repsonse){
				//console.log(repsonse);
				$scope.document=repsonse.data.DATA;
			}, function(){

			});
			}
			$scope.list();
});