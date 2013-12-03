/**
 * @name UserService
 * @requires ngResource
 *
 * @description
 * This should be used to hold the functions around making API calls for Users
 */

Dithat.factory('UserService', ['$resource', function($resource) {
  var currentWeekList = []

  return {
    currentWeekList: currentWeekList,
    weekResource: $resource('/api/users/week.json', {}, {}),
    monthResource: $resource('/api/users/month.json', {}, {}),
    habitResource: $resource('api/users/habits', {}, {
      update: {method: 'PUT'}
    })
  }
}])
