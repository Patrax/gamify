// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require angular
//= require angular-route
//= require angular-resource
//= require angular-rails-templates
//= require_tree ./templates

//= require scripts/viewer/viewer
//= require_self


angular.module('app', [
    'ngRoute',
    'viewer']);

angular.module('app').config(['$routeProvider', '$locationProvider', '$httpProvider',
    function ($routeProvider, $locationProvider, $httpProvider) {
    $routeProvider.otherwise({redirectTo:'/otherwise'});
    $locationProvider.html5Mode({
        enabled: true,
        requireBase: false
    });
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
}]);
