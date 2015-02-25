'use strict';

angular.module('app', [
    'ngRoute',
    'hoodie',
    'auth']);


angular.module('app').config(['$routeProvider', '$locationProvider', function ($routeProvider, $locationProvider) {
    $locationProvider.html5Mode(true);
    $routeProvider
        .when('/', {
            templateUrl:'scripts/staticpages/templates/main-content.tpl.html'
        });
    $routeProvider.otherwise({redirectTo:'/otherwise.html'});
}]);
