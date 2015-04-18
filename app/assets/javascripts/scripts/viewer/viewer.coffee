
angular.module 'viewer', ['ngRoute', 'templates']

.config ['$routeProvider', ($routeProvider) ->
    $routeProvider
    .when '/',
      templateUrl: 'index.html'
      controller : 'ViewerViewCtrl'
    .otherwise
        redirectTo: '/'
]

.controller 'ViewerViewCtrl', ['$scope'
  ($scope) ->
    console.log 'ViewerViewCtrl!'
]