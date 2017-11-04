demoApp.controller('mainPageCtrl', function ($scope, $window) {
    $scope.profs=[];
    $scope.Profile = true;
    $scope.Goals = false;
    $scope.Overview = false;

    $scope.profs.push({
        name: "Bob Smith",
        income: "40000",
        expense: "5000",
        imgSrc : "app/images/bob.jpg"
    });

    $scope.editMode = false;

    $scope.toggleNames = function() {
        $scope.editMode = !$scope.editMode;
    }

    $scope.newMember = function () {
        if ($scope.addMode == false) {
			$scope.addMode = true;
		}else {
			$scope.addMode = false;
		}
    }

    $scope.toggleAddMode = function() {
        $scope.addmode = !$scope.addmode;
    }

    $scope.saveNewMember = function () {
        $scope.addMode = false;
        $scope.profs.push({
            name: $scope.newName,
            income: $scope.newIncome,
            expense: $scope.newExpense,
            imgSrc: $scope.newImgSrc
        });
        console.log($scope.profs);
        
        
    }
    
    $scope.removeName = function (index) {
        var spliced = $scope.profs.splice(index,1);
        conosle.log(spliced);
	}

    $scope.toggleProfTab = function () {
        $scope.Profile = !$scope.Profile;
    }
    
    $scope.toggleGoalTab = function () {
        $scope.Goals = !$scope.Goals;
    }

    $scope.toggleOvrvTab = function () {
        $scope.Overview = !$scope.Overview;
    }

    $scope.toggleRewTab = function () {
        $scope.Rewards = !$scope.Rewards
    }

    $scope.changeTab = function() {
        if ($scope.Profile == true) {
            $scope.Goals = false;
            $scope.Overview = false;
            $scope.Rewards = false;
            console.log("profile");
        }else if ($scope.Goals == true) {
            $scope.Profile = false;
            $scope.Overview = false;
            $scope.Rewards = false;
            console.log("goals");
        }else if ($scope.Overview == true) {
            $scope.Profile = false;
            $scope.Goals = false;
            $scope.Rewards = false;
            console.log("overview");
        }else {
            $scope.Profile = false;
            $scope.Goals = false;
            $scope.Overview = false;
        }
    };
  });