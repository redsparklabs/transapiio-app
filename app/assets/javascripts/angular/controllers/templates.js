var app = angular.module('transapiio',['ngResource']);

app.controller('templateCtrl', ["$scope","$http", function($scope,$http) {
	
	$scope.idea = "Crazy Idea";
	$scope.description = "Funky";
	$scope.template = '';

	$scope.init = function() {
		$scope.getTemplates();
	};

	$scope.getTemplates = function() {
		$http.get('/templates').
		success( function(data) {
			$scope.templates = data;
		});
	};

}]);