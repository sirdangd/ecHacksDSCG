//var demoApp = angular.module("demoApp", ["ngRoute", "appConfig", "controller/simpleController", "service/simpleFactory"]);
var demoApp = angular.module("demoApp", ["ngRoute"]);

demoApp.appConfig = {
	"views": [{
		"viewUrl": "/homePage",
		"routeConfig": {
			"controller": "mainPageCtrl",
			"templateUrl": "app/view/homePage.html"
		}
	}

	],
	"defaultViewUrl": "/homePage"
};

demoApp.config(function ($routeProvider) {
	var config = demoApp.appConfig;
	config.views.forEach(function (view) {
		$routeProvider.when(view.viewUrl, view.routeConfig);
	});
	$routeProvider.otherwise({ "redirectTo": config.defaultViewUrl });
});
