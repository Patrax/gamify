'use strict';

angular.module('controllers.auth', [])

    .controller('Account', ['$scope', 'hoodieAccount', '$location', 'hoodieStore',
        function ($scope, hoodieAccount, $location, hoodieStore) {
            $scope.account = hoodieAccount;
            $scope.userAction = {
                signIn: function (user, pass) {
                    return hoodieAccount.signIn(user, pass)
                        .then(function () {
                            $location.path('/game');
                        });
                },
                signOut: function () {
                    return  hoodieAccount.signOut()
                        .then(function () {
                            $location.path('/');
                        });
                },
                signUp: function (user, pass) {
                    return hoodieAccount.signUp(user, pass)
                        .then(function () {
                            $location.path('/game');
                        });
                }
            };
            hoodieStore.findAll('results')
                .then(function(results){
                    $scope.results = results;
                });
    }])

    .controller('SigninForm', ['$scope', function ($scope) {
        $scope.actionFn = function (user, pass) {
            $scope.userAction.signIn(user, pass)
                .then(undefined, function (hoodieError) {
                    $scope.signForm.$error.message = hoodieError.message;
                });
        };
    }]);
