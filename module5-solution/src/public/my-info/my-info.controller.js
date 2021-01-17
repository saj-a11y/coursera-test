(function () {
    "use strict";
    angular.module('public')
        .controller('MyInfoController', MyInfoController);

    MyInfoController.$inject = ['registeredUser','validatefavorite'];
    function MyInfoController(registeredUser,validatefavorite){
      var $ctrl=this;
    $ctrl.registeredUser=registeredUser;
      $ctrl.validatefavorite=validatefavorite;
      var promise=validatefavorite($ctrl.registeredUser.userInfo.favoriteItem);
      promise.then(function(response){
        console.log(response.data);
        console.log(response);
        if (response.status==200) {
        console.log(response.data.short_name);
        console.log(promise);
        $ctrl.favoriteshort_name=response.data.short_name;
        console.log($ctrl.favoriteshort_name);
        $ctrl.favoriteDesc = response.data.description;
				$ctrl.favoriteName = response.data.name;
        console.log($ctrl.favoriteDesc );
        }
        else {
              $ctrl.favoriteItem="";
        }
      })



    //  console.log(this.registeredUser.userInfo.favoriteItem.short_name);
  //  this.checkShortName = checkShortName;
  //   if (this.registeredUser.registered) {
  //       this.checkShortName(this.registeredUser.userInfo.favoriteItem).then(function (data) {
  //           this.favoriteItem = data;
  //       });
  //   }
}


    })();
