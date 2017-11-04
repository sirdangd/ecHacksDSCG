demoApp.controller('mainPageCtrl', function ($scope, $window) {
    $scope.changeTab = function() {
        if ($scope.Profile == true) {
            $scope.Goals = false;
            $scope.Overview = false;
            console.log("profile");
        }else if ($scope.Goals == true) {
            $scope.Profile = false;
            $scope.Overview = false;
            console.log("goals");
        }else {
            $scope.Profile = false;
            $scope.Goals = false;
            console.log("overview");
        }
    };
  });