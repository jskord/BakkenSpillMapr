(function() {
  'use strict';
  angular.module('app').controller('mapCtrl',
    ['$scope','$http', '$httpParamSerializerJQLike', '$timeout',
      function($scope, $http, $httpParamSerializerJQLike, $timeout) {
        $scope.query = {};
        $scope.data = [];
        $scope.map;
        $scope.searchResults = "";
        $scope.markers = [];

    // delay loading of google map
        $timeout(function() {
          var uluru = {lat: 41.0906369, lng: -85.0814343};
          $scope.map = new google.maps.Map(document.getElementById('map'), {
            zoom: 4,
            center: uluru
          });
        }, 100);

        window.$scope = $scope;
      }]);

})();