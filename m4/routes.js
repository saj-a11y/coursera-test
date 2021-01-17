//configure your routes and view states in i t.
// These routes should be defined in the MenuApp module.
//The home state will not need a controller. Just a template
//he categories state can have a controller as well as a resolve
//The resolve will use the MenuDataService to retrieve categories 
//and inject them into the controller.
//The controller can then expose the retrieved categories object such 
//that it can be simply passed into the categories component.
//The items state can have the same type of setup as the categories state
(function () {
'use strict';
angular.module('MenuApp')
.config(RoutesConfig);

RoutesConfig.$inject=['$stateProvider','$urlRouterProvider'];
function RoutesConfig($stateProvider,$urlRouterProvider) {

	$urlRouterProvider.otherwise('/home');

	$stateProvider
	.state('home',{
		url:'/home',
		template:'<div>Welcome to our Restaurant</div>'
	})

	.state('categories',{
		url:'/categories',
		//template:'<div>Categories Tab</div>',
		templateUrl:'template.html',
		controller:'MenuCategoriesController as categoriesCtrl',
		resolve: {
			categoryitems: ['MenuDataService', function (MenuDataService) {
				console.log("Ia m in resolve");
				return MenuDataService.getAllCategories();
			}]
				}
			})
			


	// .state('items',{
	// 	url:'/items',
	// 	template:'Came into items'
	// })
	// ;
	
}
})();
