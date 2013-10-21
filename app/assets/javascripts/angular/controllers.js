app.controller("accomplishmentController", function($scope, $resource) {

  Entry = $resource("/api/users");
  users = Entry.query(function() {
    $scope.accomplishments = users[0].weekly_habits[0].habits;
    var user_id = users[0]._id.$oid;
    var weeklyid = users[0].weekly_habits[0]._id.$oid;

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

  });
  
});