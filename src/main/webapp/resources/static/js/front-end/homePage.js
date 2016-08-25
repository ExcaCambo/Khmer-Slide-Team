var app = angular.module('homePage', []);

//	=========================Session========================================
app.controller('sessoinCtrl', function($scope, $filter, $http, $sce) {
	$scope.user = '';
	$scope.urls = $sce.trustAsResourceUrl("http://192.168.178.152:9999");
	$scope.photo = "/resources/static/img/users/default-user-image.png";

//	$scope.urls = $sce.trustAsResourceUrl("http://192.168.1.104:9999");
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

		if(logId != ""){
			$scope.User(logId);
			
		}
		
//		=================================Comment Document Function=================================
//		var urlCat = $location.absUrl();
		var doc = getUrlVars()["doc"];
		$scope.doc = doc;
		$scope.date = $filter('date')(new Date(), 'dd-MMM-yyyy');
		$scope.insertComment = function() {
			$http({
//				 url : 'http://192.168.178.152:9999/api/docs/add-ducument',
				url : "/rest/comment",
				data : {
					  "cmt_text": $scope.txtComment,
					  "cmt_date": $scope.date,
					  "status": 1,
					  "user_id": logId,
					  "doc_id": $scope.doc,
					  "description": $scope.txtComment
				},
				method : 'POST',
			}).then(function(response) {
			//	console.log(response.data);
				$scope.txtComment = '';
				$scope.commentId(doc);

			}, function() {

			});
		} 
		var comment = $("#txtComment").val();
		if(logId != "" &&  comment != ""){
			$scope.insertComment();
			
		}else if(comment != ""){
			$scope.insertComment();
		}
});

//========================== function get param from url==========================================
function getUrlVars()
{
    var vars = [], hash;
    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
    for(var i = 0; i < hashes.length; i++)
    {
        hash = hashes[i].split('=');
        vars.push(hash[0]);
        vars[hash[0]] = hash[1];
    }
    return vars;
}

//create controller
app.controller('viewCtrl', function ($scope, $http, $filter, $location, $sce) {
	$scope.document = '';
	$scope.cat ='';
	$scope.limit = 6;
	$scope.thumb = $sce.trustAsResourceUrl("http://192.168.178.152:9999");
//	$scope.thumb = $sce.trustAsResourceUrl("http://192.168.1.104:9999");
	

//	=================================Update Number View of Document Function=================================
	var isUpdate = false;
	var doc_id = $('#doc-id').val();
	
	$scope.submit = function() {
		var view = parseInt($scope.document.VIEWED)+1;
		$http({
			url : '/rest/document/update-document/view',
			data : {
				"doc_id": doc_id,
				"viewed": view
			},
			method : 'PUT'
		}).then(function(response) {
			isUpdate = true;
			$scope.docId(doc_id);
			
		}, function() {
		});
	}
	
//	=================================View Document Function=================================
	$scope.docId = function(id) {
		$http({
			url : '/rest/document/' + id + '',
			method : 'GET'
		}).then(function(response) {
		//	console.log(response);
			$scope.document = response.data.DATA[0];
			$scope.txtTitle = $scope.document.DOC_TITLE;
			$scope.docUrl = $scope.document.URL;
			$scope.docType = $scope.document.TYPE;
			$scope.date = $scope.document.UPLOADED_DATE;
			$scope.view = $scope.document.VIEWED;
			$scope.like = $scope.document.LIKED;
			$scope.share = $scope.document.SHARED;
			$scope.description = $scope.document.DESCRIPTION;
			
			$scope.uploadBy = $scope.document.USER.USER_NAME;
			$scope.uploaderPhoto = $scope.document.USER.PHOTO;
			$scope.cat = $scope.document.CATEGORY.CAT_ID;
			
			if($scope.docType==1){
				$scope.urls = $sce.trustAsResourceUrl("https://docs.google.com/presentation/d/"+ $scope.docUrl +"/embed?start=true&loop=true&delayms=30000");
			}else if($scope.docType==2){
				$scope.urls = $sce.trustAsResourceUrl("https://drive.google.com/file/d/"+ $scope.docUrl +"/preview");
			}else if($scope.docType==3){
				$scope.urls = $sce.trustAsResourceUrl("https://docs.google.com/document/d/"+ $scope.docUrl +"/preview");
			}
			
			if(!isUpdate)
				$scope.submit();
			
//			category =$scope.cat;
//			alert(category);
			
//			$scope.ddlStatus = $scope.user.STATUS + '';
//			$scope.ddlGender = $scope.user.GENDER;
//			$scope.txtPassword = $scope.user.PASSWORD;
//			$scope.ddlRole = $scope.user.ROLE.ROLE_ID + '';
			
		}, function() {

		});
	}	
	
	// Get Path Variable from URL
//	var url = $location.absUrl();
	var doc = getUrlVars()["doc"];
	//$scope.docId(doc);
	$scope.docId(doc_id);
	
	
	//$scope.test = "https://docs.google.com/presentation/d/"+ $scope.docUrl +"/embed?start=true&loop=true&delayms=30000";
	
//	=================================Recommend Document Function=================================
	var limit = $scope.limit;
	var formData = new FormData();
	formData.append('item', limit);
	//var category = $scope.cat;
	$scope.recom = '';
	$scope.recommend = function(id) {
		//alert(limit);
		$http({
			url : '/rest/document/recomment/' + id + '',
			method : 'GET',
			enctype : 'multipart/form-data',
		}).then(function(response) {
			//console.log(response);
			$scope.recom = response.data.DATA;

			
		}, function() {

		});
	}	
	// Get Path Variable from URL
//	var urlCat = $location.absUrl();
	var cat = getUrlVars()["cat"];;
	$scope.recommend(cat);

	
});

//create controller
app.controller('documentByCatCtrl', function ($scope, $http, $filter, $location, $sce) {
	$scope.document = '';
	$scope.limit = 6;
	$scope.thumb = $sce.trustAsResourceUrl("http://192.168.178.152:9999");
//	$scope.thumb = $sce.trustAsResourceUrl("http://192.168.1.104:9999");
	

	
//	=================================Get Document By CATEGORY ID Function=================================
	$scope.catId = function(id) {
		$http({
			url : '/rest/document/by-cat-id/' + id + '',
			method : 'GET'
		}).then(function(response) {
		//	console.log(response);
			$scope.document = response.data.DATA;
			
		}, function() {

		});
	}	
	
	// Get Path Variable from URL
//	var url = $location.absUrl();
	var cat = getUrlVars()["cat"];
	$scope.catId(cat);
	
  
	
});



	//==============================create category controller of Home Page===========================================
	app.controller('categoryCtrl', function ($scope, $http, $filter) {
		$scope.category = '';

		

//	 	=================================List of Category=================================
			$scope.list = function(){
				$http({
				url: '/rest/category/get-main-category/',
				method: 'GET'
			}).then(function(repsonse){
				// console.log(repsonse);
				$scope.category=repsonse.data.DATA;
			    $scope.categoryLength = [];
			    for(var i=0; i<$scope.category.length/2; i++){
			    	$scope.categoryLength.push(i);
			    }
			}, function(){

			});
			}

			$scope.list();
			

}).directive("owlCarousel", function() {
    return {
        restrict: 'E',
        transclude: false,
        link: function (scope) {
            scope.initCarousel = function(element) {
              // provide any default options you want
                var defaultOptions = {
//                		loop:true,
//                		autoplay: true,
//                        autoplayTimeout:1000,
                		responsive:{
                            0:{
                                items:1,
                            },
                            450:{
                                items:1,
                            },
                            767:{
                                items:2,
                            },
                            991:{
                                items:3,
                            },
                            1199:{
                                items:3,
                            }
                        } 
                };
                var customOptions = scope.$eval($(element).attr('data-options'));
                // combine the two options objects
                for(var key in customOptions) {
                    defaultOptions[key] = customOptions[key];
                }
                // init carousel
                $(element).owlCarousel(defaultOptions);
            };
        }
    };
})
.directive('owlCarouselItem', [function() {
    return {
        restrict: 'A',
        transclude: false,
        link: function(scope, element) {
          // wait for the last item in the ng-repeat then call init
            if(scope.$last) {
                scope.initCarousel(element.parent());
            }
        }
    };
}]);
	
	
	//==============================create category controller of Category Page===========================================
	app.controller('catCtrl', function ($scope, $http, $filter) {
		$scope.category = '';

		
//	 	=================================Get Category By ID=================================
		$scope.catID = function(id){
			$http({
			url: '/rest/category/'+ id +'',
			method: 'GET'
		}).then(function(repsonse){
			// console.log(repsonse);
			$scope.category=repsonse.data.DATA[0];
			$scope.txtMainCategory = $scope.category.CAT_NAME;
		 
		}, function(){

		});
		}

//	 	=================================Get Sub Category By Parent ID=================================
		$scope.subCategory = '';
		$scope.subID = function(id){
			$http({
			url: '/rest/category/category-by-parent-id/'+ id +'',
			method: 'GET'
		}).then(function(repsonse){
			 console.log(repsonse);
			$scope.subCategory=repsonse.data.DATA;
			//$scope.txtSubCategory = $scope.subCategory.CAT_NAME;
		 
		}, function(){

		});
		}
		
		
		var cat = getUrlVars()["cat"];
		$scope.catID(cat);
		$scope.subID(cat);
		
			

});
	
	
	//create controller
	app.controller('documentCtrl', function ($scope, $http, $filter, $sce) {
		$scope.popularDocument = '';
		$scope.thumb = $sce.trustAsResourceUrl("http://192.168.178.152:9999");
//		$scope.thumb = $sce.trustAsResourceUrl("http://192.168.1.104:9999");
		
//	 	=================================List of Popular Document=================================
			$scope.docPopularList = function(){
				$http({
				url: '/rest/document/popular/',
				method: 'GET'
			}).then(function(repsonse){
				 //console.log(repsonse);
				$scope.popularDocument=repsonse.data.DATA;
			}, function(){

			});
			}

			$scope.docPopularList();


			

}).directive("owlCarouselDoc", function() {
    return {
        restrict: 'E',
        transclude: false,
        link: function (scope) {
            scope.initCarousel = function(element) {
              // provide any default options you want
                var defaultOptions = {
                		autoplay: true,
                        autoplayTimeout:5000,
                		responsive:{
                            0:{
                                items:1,
                            },
                            450:{
                                items:1,
                            },
                            767:{
                                items:2,
                            },
                            991:{
                                items:4,
                            },
                            1199:{
                                items:4,
                            }
                        } 
                };
                var customOptions = scope.$eval($(element).attr('data-options'));
                // combine the two options objects
                for(var key in customOptions) {
                    defaultOptions[key] = customOptions[key];
                }
                // init carousel
                $(element).owlCarousel(defaultOptions);
            };
        }
    };
})
.directive('owlCarouselDocument', [function() {
    return {
        restrict: 'A',
        transclude: false,
        link: function(scope, element) {
          // wait for the last item in the ng-repeat then call init
            if(scope.$last) {
                scope.initCarousel(element.parent());
            }
        }
    };
}]);
	
	//create controller
	app.controller('latestDocumentCtrl', function ($scope, $http, $filter, $sce) {	
		$scope.latestDocument = '';
		$scope.thumb = $sce.trustAsResourceUrl("http://192.168.178.152:9999");
//		$scope.thumb = $sce.trustAsResourceUrl("http://192.168.1.104:9999");
	
// 	=================================List of Latest Document=================================
	$scope.docLatestList = function(){
		$http({
		url: '/rest/document/latest/',
		method: 'GET'
	}).then(function(repsonse){
		 //console.log(repsonse);
		$scope.latestDocument=repsonse.data.DATA;
	}, function(){

	});
	}

	$scope.docLatestList();
	

}).directive("owlCarouselLatestDoc", function() {
return {
restrict: 'E',
transclude: false,
link: function (scope) {
    scope.initCarousel = function(element) {
      // provide any default options you want
        var defaultOptions = {
        		autoplay: true,
                autoplayTimeout:5000,
        		responsive:{
                    0:{
                        items:1,
                    },
                    450:{
                        items:1,
                    },
                    767:{
                        items:2,
                    },
                    991:{
                        items:4,
                    },
                    1199:{
                        items:4,
                    }
                } 
        };
        var customOptions = scope.$eval($(element).attr('data-options'));
        // combine the two options objects
        for(var key in customOptions) {
            defaultOptions[key] = customOptions[key];
        }
        // init carousel
        $(element).owlCarousel(defaultOptions);
    };
}
};
})
.directive('owlCarouselLatestDocument', [function() {
return {
restrict: 'A',
transclude: false,
link: function(scope, element) {
  // wait for the last item in the ng-repeat then call init
    if(scope.$last) {
        scope.initCarousel(element.parent());
    }
}
};
}]);
	
	
	//create controller
	app.controller('commentCtrl', function ($scope, $http, $filter, $location, $sce) {
		$scope.comment = '';
		$scope.cat ='';
		$scope.thumb = $sce.trustAsResourceUrl("http://192.168.178.152:9999");
//		$scope.thumb = $sce.trustAsResourceUrl("http://192.168.1.104:9999");
		
		
//		========================== function get param from url==========================================
		function getUrlVars()
		{
		    var vars = [], hash;
		    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
		    for(var i = 0; i < hashes.length; i++)
		    {
		        hash = hashes[i].split('=');
		        vars.push(hash[0]);
		        vars[hash[0]] = hash[1];
		    }
		    return vars;
		}
		
//		=================================Get Comment Function=================================
		$scope.commentId = function(id) {
			$http({
				url : '/rest/comment/by-document/' + id + '',
				method : 'GET'
			}).then(function(response) {
				//console.log(response);
				$scope.comment = response.data.DATA;
				
			}, function() {

			});
		}	
		
		// Get Path Variable from URL
//		var url = $location.absUrl();
		var com = getUrlVars()["doc"];;
		$scope.commentId(com);
		
		
		//$scope.test = "https://docs.google.com/presentation/d/"+ $scope.docUrl +"/embed?start=true&loop=true&delayms=30000";
		
  
		
	});
	
	// Sign Up
	app.controller('signinctrl', function ($scope, $http) {
		
		var utc = new Date().toJSON().slice(0,10);
		$scope.BlakPass = false;
		$scope.noMatch = true;
		$scope.match= function(){
			if(typeof $scope.txtPassword === "undefined"){
				$scope.BlakPass = true;
				
			}else{
				$scope.BlakPass = false;
				if($scope.txtPassword != $scope.txtConfirmPassword){
					$scope.noMatch = true;
				//	alert("NO Match " + $scope.tt + $scope.noMatch);
				}else{
					$scope.noMatch = false;
					alert("OK Match " + $scope.tt + $scope.noMatch);
				}
			}
		}
		
		//
		$scope.test = function (){
			alert(">> Working " + $scope.vf);
		}
		$scope.txtTEST = ">> OK";
		//
		
		
		$scope.signup = function(){
			$http({
				url: 'http://localhost:8080/rest/user',
				method: 'POST',
				data:{
					"user_name": $scope.txtusername,
					"gender": $scope.txtGender,
					"email": $scope.txtemail,
					"password":  $scope.txtPassword,
					"photo": "/resources/static/img/users/default-user-image.png",
					"registered_date": utc,
					"status": 1,
					"role_id": 2
				}
			}).then(function(repsonse){
				alert($scope.txtusername + "  " + $scope.txtGender + "  " + $scope.txtemail +"  "+ $scope.txtPassword + "  "+ utc)
				swal({   
					title: "Congradulation !",   
					text: "អ្នក បាន ចុះឈ្មោះជោគជ័យក្នុង KhmerSlide",
					type: "success",
					timer: 3000
				},function(){
					window.location.assign("/login");
				});
				
			}, function(){
	
			});
		}	
});

	