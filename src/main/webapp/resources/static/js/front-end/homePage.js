var app = angular.module('homePage', []);

//create controller
app.controller('viewCtrl', function ($scope, $http, $filter, $location, $sce) {
	$scope.document = '';
	
//	=================================View Document Function=================================
	$scope.docId = function(id) {
		$http({
			url : 'http://localhost:8080/rest/document/' + id + '',
			method : 'GET'
		}).then(function(response) {
			console.log(response);
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
			if($scope.docType==1){
				$scope.urls = $sce.trustAsResourceUrl("https://docs.google.com/presentation/d/"+ $scope.docUrl +"/embed?start=true&loop=true&delayms=30000");
			}else if($scope.docType==2){
				$scope.urls = $sce.trustAsResourceUrl("https://drive.google.com/file/d/"+ $scope.docUrl +"/preview");
			}else if($scope.docType==3){
				$scope.urls = $sce.trustAsResourceUrl("https://docs.google.com/document/d/"+ $scope.docUrl +"/preview");
			}
			
//			$scope.ddlStatus = $scope.user.STATUS + '';
//			$scope.ddlGender = $scope.user.GENDER;
//			$scope.txtPassword = $scope.user.PASSWORD;
//			$scope.ddlRole = $scope.user.ROLE.ROLE_ID + '';
			
		}, function() {

		});
	}	
	
	// Get Path Variable from URL
	var url = $location.absUrl();
	var doc = url.substr(url.lastIndexOf("=") + 1);
	$scope.docId(doc);
	
	//$scope.test = "https://docs.google.com/presentation/d/"+ $scope.docUrl +"/embed?start=true&loop=true&delayms=30000";
	

    
//    urls.push({domain: });
    
    
	
});

	//create controller
	app.controller('categoryCtrl', function ($scope, $http, $filter) {
		$scope.category = '';
		
//	 	=================================List of Category=================================
			$scope.list = function(){
				$http({
				url: 'http://localhost:8080/rest/category/get-main-category/',
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
//                		autoplay: true,
//                        autoplayTimeout:5000,
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
	
	
	//create controller
	app.controller('documentCtrl', function ($scope, $http, $filter) {
		$scope.popularDocument = '';
		
		
//	 	=================================List of Popular Document=================================
			$scope.docPopularList = function(){
				$http({
				url: 'http://localhost:8080/rest/document/popular/',
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
	app.controller('latestDocumentCtrl', function ($scope, $http, $filter) {	
		$scope.latestDocument = '';
	
// 	=================================List of Latest Document=================================
	$scope.docLatestList = function(){
		$http({
		url: 'http://localhost:8080/rest/document/latest/',
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

	