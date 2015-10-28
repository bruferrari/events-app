angular.module('eventsapp').controller('EventController', function($scope, $routeParams, eventsRegister, eventsResource) {
	$scope.event = {};
	$scope.message = '';
	
	if($routeParams.id) {
		eventsResource.get({id : $routeParams.id}, function(event) {
			$scope.event = event;
		}, function(error) {
			console.log(error);
			$scope.message = 'An error occured. Please contact system administration'
		});
	}
	
	$scope.submit = function() {
		eventsRegister.register($scope.event)
		.then(function(data) {
			$scope.message = data.message;
			if(data.include) $scope.event = {};
		})
		.catch(function(data) {
			$scope.message = data.message;
		});
	}
});