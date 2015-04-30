
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require angular
//= require angular-route
//= require angular-resource
//= require angular-rails-templates
//= require_tree ./../templates

//= require scripts/viewer/viewer
//= require_self


$(document).on('ready page:load', function() {
	angular.bootstrap(document.body, ['app'])
});


angular.module('app', [
    'ngRoute',
    'viewer']);

angular.module('app').config(['$routeProvider', '$locationProvider', '$httpProvider',
    function ($routeProvider, $locationProvider, $httpProvider) {
    $routeProvider.otherwise({redirectTo:'/404'});
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
    $locationProvider.html5Mode({
	    enabled: true
    });
}]);
