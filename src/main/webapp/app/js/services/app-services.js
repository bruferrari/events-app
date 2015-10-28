angular.module('appServices', ['ngResource'])
		.factory('eventsResource', function($resource) {
			
	return $resource('api/events/:id', null, {
		update : {
			method: 'PUT'
		},
		get : {
			method: 'GET',
			isArray: false
		}
	});
	
}).factory('eventsRegister', function(eventsResource, $q, $rootScope) {
	var service = {};
	var evento = 'registeredEvent'
	
	service.register = function(event) {
		return $q(function(resolve, reject) {
			if(event.id) {
				eventsResource.update({id : event.id}, event, function() {
					$rootScope.$broadcast(evento);
					resolve({
						message: 'Event ' + event.title + ' has been update with success!',
						include:  false
					});
				}, function(error) {
					console.log(error);
					reject({
						message: 'Event ' + event.title + ' has not been created. An error occured!'
					});
				});
			} else {
				eventsResource.save(event, function() {
					$rootScope.$broadcast(evento);
					resolve({
						message: 'Event ' + event.title + ' has been created with success!',
						include: true
					});
				}, function(error) {
					console.log(error);
					reject({
						message: 'Event ' + event.title + ' has not been updated. An error occured!'
					});
				});
			}
		});
	};
	return service;
});