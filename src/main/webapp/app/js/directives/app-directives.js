angular.module('eventsapp').directive('dangerButton', function() {
	var ddo = {};
	ddo.restrict = "E";
	ddo.scope = {
		name: '@',
		action: '&'
	};
	
	ddo.template = '<button ng-click="action(event)" class="btn btn-danger">{{name}}</button>';
	
	return ddo;
});