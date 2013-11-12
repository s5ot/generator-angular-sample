'use strict'

angular.module('angularjsTodosApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]

    $scope.tasks = [
      {"body": "do this 1", "done": false},
      {"body": "do this 2", "done": false},
      {"body": "do this 3", "done": true},
      {"body": "do this 4", "done": false},
      {"body": "do this 5", "done": false},
    ]

    $scope.addNew = ->
      $scope.tasks.push({"body":$scope.newTaskBody, "done":false})
      $scope.newTaskBody = ''

    $scope.getDoneCount = ->
      count = 0
      angular.forEach($scope.tasks, (task) ->
        count += task.done ? 1 : 0
      )
      count

    $scope.deleteDone = ->
      oldTasks = $scope.tasks
      $scope.tasks = []
      angular.forEach(oldTasks, (task) ->
        if (!task.done)
          $scope.tasks.push(task)
      )
