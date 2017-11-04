demoApp.controller('mainPageCtrl', function ($scope, $window) {
    $scope.Profile = true;
    $scope.Goals = false;
    $scope.Overview = false;
    $scope.profs=[];

    $scope.profs.push({
        name: "Bob Smith",
        f2: "f2",
        f3: "f3",
        f4: "f4",
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

    $scope.saveNewMember = function () {
        $scope.addMode = false;
        $scope.profs.push({
            name: $scope.newName,
            f2: $scope.newF2,
            f3: $scope.newF3,
            f4: $scope.newF4,
            imgSrc: $scope.newImg
        });
    }
    
    $scope.removeName = function (index) {
		var spliced = $scope.profs.splice(index,1);
	}

    $scope.toggleProfTab = function () {
        $scope.Profile = true;
    }
    
    $scope.toggleGoalTab = function () {
        $scope.Goals = true;
    }

    $scope.toggleOvrvTab = function () {
        $scope.Overview = true;
    }

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