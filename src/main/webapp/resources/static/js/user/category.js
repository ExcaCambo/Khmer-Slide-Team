var app = angular.module('categoryList', ["datatables"]);

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
				url: '/rest/category',
				method: 'GET'
			}).then(function(repsonse){
				// console.log(repsonse);
				$scope.category=repsonse.data.DATA;
			}, function(){

			});
			}

			$scope.list();
			
//			=================================Add Category Function=================================
			// get value from the change of category menu select with option 2 values then split it
			$scope.categ = function(catId) {
				$scope.catID = catId.split(",");
				$scope.id = $scope.catID[0];
				$scope.folder = $scope.catID[1];
			}
			// end split
			$scope.txtCreateBy = 1;
			$scope.status = 1;
			$scope.date = $filter('date')(new Date(), 'dd-MMM-yyyy');
			$scope.insert = function() {
				$http({
					url : '/rest/category',
					data :{
						  "parent_id": $scope.id,
						  "cat_name": $scope.txtCatName,
						  "status": $scope.status,
						  "user_id": $scope.txtCreateBy,
						  "description": $scope.txtDescription,
						  "icon": $scope.ddlIcon,
						  "folder_google_drive": $scope.folder,
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
	