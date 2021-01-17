(function () {
'use strict';
angular.module('Data')
.controller('MenuCategoriesController',MenuCategoriesController);

MenuCategoriesController.$inject= ['MenuDataService','categoryitems'];
function MenuCategoriesController(MenuDataService,categoryitems) {
	var ctrl=this;
		console.log(categoryitems);
	ctrl.categoryitems=categoryitems;
	console.log(ctrl.categoryitems);
}
})();