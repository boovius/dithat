Dithat.controller("accomplishmentController", ['$scope', 'UserService', function($scope, UserService) {

  $scope.currentWeekHabits = UserService.currentWeekList

  $scope.weeklyHabits = UserService.weekResource.query(function(data){
    angular.forEach(data, function(value){
      UserService.currentWeekList.push(value)

    })
    console.log(UserService.currentWeekList)
  })

    $scope.submit = function() {
      habit = $resource('/api/users/:user_id/weekly_habits/:weekly_habit_id/habits', {user_id: user_id, weekly_habit_id: weeklyid });
      console.log(habit);
      console.log($scope.$id);
      entry = habit.save({name: $scope.newAccomp, count: 0});
      $scope.accomplishments.unshift(entry);
      $scope.newAccomp = '';
    }

    $scope.addToCount = function() {
      var currentcount = this.accomp.count;
      this.accomp.count = currentcount + 1;
    }

    $scope.delete = function() {
      index = this.$index;
      $scope.accomplishments.splice(index, 1)
    }

}]);
