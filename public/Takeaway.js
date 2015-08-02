takeaway.controller('TakeawayController', ["$http", function($http) {
  var self = this;

  self.loadData = function () {
      $http.get('http://localhost:4567/').success(function(data) {
         self.dishes = data;
      });
   };
}]);
