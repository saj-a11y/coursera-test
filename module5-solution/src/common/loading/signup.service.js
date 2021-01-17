(function () {
  "use strict";
angular.module('common')
.service('SignUpService',SignUpService);
SignUpService.$inject = [];
  function SignUpService() {
      var userInfo = { registered:false, userInfo:{} };

      this.registerUser = function (firstName, lastName, email, phone, favoriteItem) {
          userInfo.registered = true;

          userInfo.userInfo = {
              firstName: firstName,
              lastName: lastName,
              email: email,
              phone: phone,
              favoriteItem: favoriteItem
          }
      }

    this.getRegisteredUser = function () {
      console.log(userInfo);
          return userInfo;
      }
  }



})();
