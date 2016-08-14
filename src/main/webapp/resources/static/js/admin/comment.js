var app = angular.module('commentList', ["datatables"]);

	//create controller
	app.controller('commentListCtrl', function ($scope, $http, DTOptionsBuilder) {
		$scope.comment = '';
		
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
				url: 'http://localhost:8080/rest/comment',
				method: 'GET'
			}).then(function(repsonse){
		
				$scope.comment=repsonse.data.DATA;
			}, function(){

			});
			}

			$scope.list();
			
			//delete comment
		    $scope.premove = function (id) {
	            swal({title: "Are you sure?",
	                        text: "You will not be able to recover this imaginary file!",
	                        type: "warning",   showCancelButton: true,
	                        confirmButtonColor: "#DD6B55",   confirmButtonText: "Yes, delete it!",
	                        cancelButtonText: "No, cancel pls!",
	                        closeOnConfirm: false,
	                        closeOnCancel: false },
	                    function(isConfirm){
	                        if (isConfirm) {
	                            $http.delete('http://localhost:8080/rest/comment/'+ cmt_id +'').then(
	                                    function (repsonse) {
	                                        $scope.list();
	                                    }
	                            ), (function(){

	                            });
	                            swal("Deleted!", "Your imaginary file has been deleted.", "success");
	                        }
	                        else
	                        {
	                            swal("Cancelled", "Your imaginary file is safe :)", "error");
	                        }
	                    })
	        }
			
});