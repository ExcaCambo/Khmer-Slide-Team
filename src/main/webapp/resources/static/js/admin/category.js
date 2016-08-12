var app = angular.module('categoryList', ["datatables"]);

	//create controller
	app.controller('categoryListCtrl', function ($scope, $http, $filter, DTOptionsBuilder) {
		$scope.category = '';
		
//	 	=================================DataTables configurable options for Table Category=================================
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
				url: 'http://localhost:8080/rest/category',
				method: 'GET'
			}).then(function(repsonse){
				// console.log(repsonse);
				$scope.category=repsonse.data.DATA;
				//alert($scope.ddlCategory);
			}, function(){

			});
			}

			$scope.list();
			
//			=================================Add Category Function=================================
			$scope.cat = function(catId) {
				$scope.parent = catId;
			}
			$scope.txtCreateBy = 1;
			$scope.status = 1;
			$scope.date = $filter('date')(new Date(), 'dd-MMM-yyyy');
			$scope.insert = function() {
				$http({
					url : 'http://localhost:8080/rest/category',
					data :{
						  "parent_id": $scope.parent,
						  "cat_name": $scope.txtCatName,
						  "status": $scope.status,
						  "user_id": $scope.txtCreateBy,
						  "description": $scope.txtDescription,
						  "icon": $scope.ddlIcon,
						  "folder_google_drive": $scope.txtCatName,
						  "created_date": $scope.date
					},
					method : 'POST'
				}).then(function() {
					// console.log(respsonse.data);
//					$scope.txtName = '';
//					$scope.ddlGender = '';
//					$scope.txtEmail = '';
//					$scope.txtPassword = '';
//					$scope.txtConfirmPassword = '';
					$scope.list();
				}, function() {

				});
			}
			
});