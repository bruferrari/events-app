angular.module('eventsapp').controller('EventsController', function($scope, eventsResource, eventsRegister) {
	$scope.events = [];
	$scope.message = '';
	$scope.filter = '';
	
	eventsResource.get(function(data) {
		$scope.events = data.events;
	}, function(error) {
		console.log(error);
	});
	
	$scope.remove = function(event) {
		eventsResource.delete({id : event.id}, function() {
			var index = $scope.events.indexOf(event);
			$scope.events.splice(index, 1);
			$scope.message = 'Event ' + event.title + ' has been removed with success!'
		}, function(error) {
			console.log(error);
			$scope.message = 'Event ' + event.title + ' could not be removed. An error ocurred.'
		});
	}

});