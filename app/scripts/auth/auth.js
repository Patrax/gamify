'use strict';

angular.module('auth', ['controllers.auth'])


.config(['$routeProvider', function ($routeProvider) {
    $routeProvider
        .when('/signin', {
            controller:'SigninForm',
            templateUrl:'scripts/auth/templates/signin-form.tpl.html'
        });
}]);
