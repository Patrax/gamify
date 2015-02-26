'use strict';

angular.module('auth', ['controllers.auth'])


.config(['$routeProvider', function ($routeProvider) {
    $routeProvider
        .when('/signin', {
            controller:'SigninForm',
            templateUrl:'scripts/auth/templates/signin-form.tpl.html'
        })
        .when('/signup', {
            controller:'SignupForm',
            templateUrl:'scripts/auth/templates/signup-form.tpl.html'
        });
}]);
