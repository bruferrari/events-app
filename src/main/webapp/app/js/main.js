var eventsapp = angular.module('eventsapp', ['appServices', 'ngRoute'])
.config(function($routeProvider, $locationProvider) {
	
	$locationProvider.html5Mode(true);

	$routeProvider.when('/events', {
		templateUrl: 'home.jsp',
		controller: 'EventsController'
	});
	
	$routeProvider.when('/new', {
		templateUrl: 'register.jsp',
		controller: 'EventController'
	});
	
	$routeProvider.when('/event/edit/:id', {
		templateUrl: 'register.jsp',
		controller: 'EventController'
	});
	
	$routeProvider.otherwise({redirectTo: '/events'});
});