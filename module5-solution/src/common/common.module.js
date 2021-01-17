(function() {
"use strict";

angular.module('common', [])
.constant('ApiPath', 'https://waleed-angularjs.herokuapp.com')
//.config(config);

// config.$inject = ['$httpProvider'];
// function config($httpProvider) {
//   $httpProvider.interceptors.push('loadingHttpInterceptor');
// }
.config(config);
config.$inject=['$httpProvider']
function config($httpProvider){
  $httpProvider.interceptors.push('loadingHttpInterceptor');
}
})();
