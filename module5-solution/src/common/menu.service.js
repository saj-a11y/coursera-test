(function () {
"use strict";

angular.module('common')
.service('MenuService', MenuService);


MenuService.$inject = ['$http', 'ApiPath'];
function MenuService($http, ApiPath) {
  var service = this;

  service.getCategories = function () {
    return $http({
      method: 'GET',
      url:(ApiPath+ "/categories.json")
    })
    .then(function(response){
      console.log(response.data);
      return response.data;
    });
  };


  service.getMenuItems = function (category) {
    var config = {};
    if (category) {
      config.params = {'category': category};
    }

    return $http({
      method: 'GET',
      url:(ApiPath+ "/menu_items.json")
    })
    .then(function(response){
      console.log(response.data);
      return response.data;
    });
  };


service.validatefavorite=function(shortName){
  return $http({
    method:'GET',
    url:(ApiPath+ "/menu_items/" + shortName + ".json")
  })
  .then(function(response){
    console.log(response.data);
    console.log(response);
    return response;
  },
			  function(response)
				 {console.log(response); return response; });

}

}



})();
