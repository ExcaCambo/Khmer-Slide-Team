var app = angular.module('saveList', ["datatables"]);

	//create controller
	app.controller('saveListCtrl', function ($scope, $http, DTOptionsBuilder) {
		$scope.savelist = '';
		
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
				url: 'http://localhost:8080/rest/save-list',
				method: 'GET'
			}).then(function(repsonse){
				// console.log(repsonse);
				$scope.savelist=repsonse.data.DATA;
			}, function(){

			});
			}

			$scope.list();
});