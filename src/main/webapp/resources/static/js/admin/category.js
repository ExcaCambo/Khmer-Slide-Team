var app = angular.module('categoryList', ["datatables"]);

	//create controller
	app.controller('categoryListCtrl', function ($scope, $http, DTOptionsBuilder) {
		$scope.categoryList = '';
		
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
					method: 'GET',
					url: 'http://localhost:8080/rest/category/get-category'
				
			}).then(function(response){
				$scope.categoryList=response.data.DATA;
				
			}, function(){
				$scope.categoryList = response.statusText;
				});
			}
			$scope.list();
			
			$scope.deleteCategoryList = function(CAT_ID){
				
				alert("DELETE ID" + CAT_ID);
				
				$http({
					method: 'DELETE',
					url: 'http://localhost:8080/rest/category/delete-category/'+CAT_ID
				}).then(function(repsonse){
					//console.log(repsonse);
					alert("DELETE SUCCESS");
					$scope.list();
				}, function(){
				
				});
			}
			
			
			$scope.getCategoryById = function(CategoryId){
				
				
				
			}
			


			$scope.listByID = function(id){
				alert(id);
				$http({
					method: 'GET',
					url: 'http://localhost:8080/rest/category/get-category-id/' + id + ''
				
			}).then(function(repsonse){
				$scope.category = repsonse.data.DATA[0];
				$scope.txtCatName = $scope.category.CAT_NAME ;
				$scope.ddlCategory = $scope.category.PARENT.CAT_NAME;				
				$scope.ddlStatus = $scope.category.STATUS + '';
				$scope.txtCatDescription = $scope.category.DESCRIPTION;
				alert($scope.ddlCategory)
			}, function(){
				$scope.categoryList = response.statusText;
				});
			}
			
			$scope.update = function(){
				
				
				
				alert(id);
				$http({
					url: 'http://localhost:8080/rest/category',
					data: {
						  "PARENT_ID": 0,
						  "CAT_NAME": $scope.txtCatName,
						  "STATUS": 0,
						  "USER": 0,
						  "DESCRIPTION": "string",
						  "ICON": "string"
						}
				,
				method:'PUT'
				
			}).then(function(repsonse){
				$scope.category = repsonse.data.DATA[0];
				$scope.txtCatName = $scope.category.CAT_NAME;
				alert($scope.txtCatName)
			}, function(){
				$scope.categoryList = response.statusText;
				});
			}

});