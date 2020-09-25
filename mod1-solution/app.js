(function () {
    'use strict';
    
    angular.module('LunchCheck', [])
    .controller('LunchCheckController', LunchCheckController);
    
    LunchCheckController.$inject = ['$scope'];
    function LunchCheckController($scope) {
      $scope.statusClass="";
      $scope.message = "";
      $scope.lunchDishes = "";
      $scope.stateOfBeing = "hungry";
    
      $scope.checkDishes = function () {
        var i = countDishes($scope.lunchDishes);
        if (i==0){
          $scope.statusClass="error";
          $scope.message="Please enter data first";
        }
        else if(i>3){
          $scope.statusClass="fine";
          $scope.message="Too much!";
        }
        else{
          $scope.statusClass="fine";
          $scope.message="Enjoy!";
        }
      };
    }
    
    function countDishes(string) {
      // case of empty items between commas implemented
      return string.split(',')
          .filter(function(dish) { return dish.trim().length != 0 })
          .length;
    }
    
    })();