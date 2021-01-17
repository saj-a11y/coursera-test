(function () {
'use strict';
angular.module('Data')
.service('MenuDataService',MenuDataService)//shouls be declared on data module
.constant('API',"https://davids-restaurant.herokuapp.com/");

MenuDataService.$inject= ['$http','API'];
console.log("Hi Iam in service.js");
function MenuDataService($http,API) {
	var service=this;
	console.log("Hi Iam in service.js");
	
service.getAllCategories = function () {
		return $http({
			method: 'GET',
			url: "https://davids-restaurant.herokuapp.com/categories.json"
		})
		.then(function(response){
			console.log(response.data);
			return response.data;
		})
	};
// 	service.getItemsForCategory=function(categoryShortName){
// 		return $http({method:'GET',url:(API+"menu_items.json?category=")})
// 		.then(function(response){
// 			console.log("Hi",response.data);
// 			return response.data;
// 			//where, before the call to the server, your code should append whatever categoryShortName value 
// 			//was passed in as an argument into the getItemsForCategory method.
// 		})

// 		.catch(function(error){
// 			console.log("Something went terribly wrong");
// 		});
	
// }
	
}
})();
	


