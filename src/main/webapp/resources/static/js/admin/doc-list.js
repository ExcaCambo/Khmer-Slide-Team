var app = angular.module('documentList', [ "datatables" ]);

// create controller
app
		.controller(
				'documentListCtrl',
				function($scope, $http, DTOptionsBuilder) {
					$scope.document = '';

					// DataTables configurable options
					$scope.dtOptions = DTOptionsBuilder
							.newOptions()
							.withLanguage(
									{
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

					$scope.list = function() {
						$http({
							url : 'http://localhost:8080/rest/document-list',
							method : 'GET'
						}).then(function(repsonse) {
							// console.log(repsonse);
							$scope.document = repsonse.data.DATA;
						}, function() {

						});
					}

					$scope.list();

					$scope.deleteDocList = function(DOC_ID) {

						alert("DELETE ID" + DOC_ID);

						$http(
								{
									method : 'DELETE',
									url : 'http://localhost:8080/rest/document-list/delete-document/'
											+ DOC_ID + ''
								}).then(function(repsonse) {
							// console.log(repsonse);
							alert("DELETE SUCCESS");
							$scope.list();
						}, function() {

						});
					}

					$scope.listByID = function(id) {
						alert(id);
						$http(
								{
									method : 'GET',
									url : 'http://localhost:8080/rest/document-list/get-document-id/'
											+ id + ''

								})
								.then(
										function(repsonse) {
											$scope.document = repsonse.data.DATA[0];
											console.log(document);
											$scope.txtDocTitle = $scope.document.DOC_TITLE;
											$scope.txtMainCat = $scope.document.CATEGORY.CAT_NAME;
											$scope.txtStatus = $scope.document.DOC.STATUS;
											alert($scope.txtDocTitle)
										},
										function() {
											$scope.categoryList = response.statusText;
										});
					}

					$scope.CatList = function() {
						$http(
								{
									method : 'GET',
									url : 'http://localhost:8080/rest/category/get-category'

								}).then(function(repsonse) {
							$scope.category = repsonse.data.DATA;
						}, function() {
							$scope.categoryList = response.statusText;
						});
					}
					$scope.CatList();

				});