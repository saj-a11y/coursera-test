angular.module('Data')
.component('Items',{

	template:'<div>Iam in items component</div>',
	controller:'ItemsController',
	bindings:{
		items:'<'
	}
})
	//  shows all of the menu items for a particular category.
