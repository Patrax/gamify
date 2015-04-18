
angular.module 'viewer', ['ngRoute', 'templates']

.config ['$routeProvider', ($routeProvider) ->
    $routeProvider
    .when '/courses/viewer',
      templateUrl: 'index.html'
      controller : 'ViewerViewCtrl'
    .otherwise
        redirectTo: '/'
    console.log 'hey2'
]

.controller 'ViewerViewCtrl', ['$scope'
  ($scope) ->
    console.log 'ViewerViewCtrl!'
]