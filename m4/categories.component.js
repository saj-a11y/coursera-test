(function () {
'use strict';

angular.module('Data')
.component('categories',{
	templateUrl:'categories.template.html',
	bindings: {
		categoryitems:'<'
	},

})
})();
	// shows all available categories to the user

// components should NOT directly use the MenuDataService 
// to fetch their own data.
//  Instead, the proper data should be simply passed into the component. 
// (Hint: use the one-way < binding).