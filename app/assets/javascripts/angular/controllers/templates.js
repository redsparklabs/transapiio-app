var app = angular.module('transapiio',['ngResource']).
  filter('markdown', function() {
    return function(input) {
      var converter = new Showdown.converter();
      return converter.makeHtml(input);
    };
  });

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

app.controller('TemplateFormCtrl', ["$scope", "$http", function($scope,$http) {

	$scope.template = '';
	//var converter = new Showdown.converter();
	
	$scope.init = function(id) {
		$scope.id = id;
		$scope.getTemplate($scope.id);
	};

	$scope.getTemplate = function(id) {
		$http.get('/templates/'+id).
			success( function(data) {
				$scope.template = data;
		});
	};

	//$scope.template.preview = converter.makeHtml($scope.template.body);
	
}]);