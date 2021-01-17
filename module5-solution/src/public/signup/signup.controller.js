(function () {
"use strict";

angular.module('public')
.controller('SignUpController',SignUpController)

SignUpController.$inject=['getMenuItems','registerUser','validatefavorite'];

function SignUpController(getMenuItems,registerUser,validatefavorite){
  var signupCtrl=this;
signupCtrl.registered=false;
signupCtrl.getMenuItems=getMenuItems;
signupCtrl.registerUser=registerUser;
signupCtrl.validatefavorite=validatefavorite;
console.log(signupCtrl.Favorite);
signupCtrl.submitForm=function(){
  console.log(signupCtrl.Favorite);
    if(signupCtrl.Favorite!=null ||signupCtrl.Favorite!=undefined ){
    var promise=validatefavorite(signupCtrl.Favorite);
    promise.then(function(response){
      console.log(response.status);
      console.log(response.data);
      console.log(response);
      if (response.status==200) {
        signupCtrl.favoritevalidated=true;
        registerUser(signupCtrl.FirstName, signupCtrl.LastName, signupCtrl.Email, signupCtrl.Phone, signupCtrl.Favorite);
                    signupCtrl.registered = true;
      }
      else {
            signupCtrl.favoritevalidated=false;
            signupCtrl.registered = false;
      }
    });

}
else {
  signupCtrl.favoritevalidated=true;
  registerUser(signupCtrl.FirstName, signupCtrl.LastName, signupCtrl.Email, signupCtrl.Phone, signupCtrl.Favorite);
              signupCtrl.registered = true;
}

}

}



})();
