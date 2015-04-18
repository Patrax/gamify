
angular.module 'viewer', ['ngRoute', 'templates']

.config ['$routeProvider', ($routeProvider) ->
    $routeProvider
    .when '/',
      templateUrl: 'viewer/index.html'
      controller : 'ViewerViewCtrl'
    .when '/challenges',
      templateUrl: 'viewer/challenges/show.html'
      controller : 'ChallengeViewCtrl'
    .otherwise
        redirectTo: '/'
]

.controller 'ViewerViewCtrl', ['$scope'
  ($scope) ->
    console.log 'ViewerViewCtrl is alive!'
]

.controller 'ChallengeViewCtrl', ['$scope'
  ($scope) ->
    console.log 'ChallengeViewCtrl is alive!'
]