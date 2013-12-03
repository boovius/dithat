Dithat.controller("accomplishmentController", ['$scope', 'UserService', function($scope, UserService) {

  $scope.currentWeekHabits = UserService.currentWeekList

  $scope.weeklyHabits = UserService.weekResource.query(function(data){
    angular.forEach(data, function(value){
      UserService.currentWeekList.push(value)
    })
  })

    $scope.submit = function() {
      console.log($scope.input)
      var new_habit = {name: $scope.input, count: 0}
      $scope.input = ''
      $scope.currentWeekHabits.unshift(new_habit)
      UserService.habitResource.update(new_habit)
    }

    $scope.addToCount = function() {
      this.habit.count += 1
    }

    $scope.delete = function() {
      index = this.$index;
      $scope.accomplishments.splice(index, 1)
    }

}]);
