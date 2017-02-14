app = angular.module 'TorchSongApp',[]
app.controller "MainController", ($scope) ->
  $scope.torchModel = [
    {name: 'Edge 1'
    valve: 0
    drive: 1,
    igniter: 1},

    {name: 'Edge 2'
    valve: 1
    drive: -1,
    igniter: 0}
  ]
  $scope.driveLabel = (d) ->
    return 'Fwd' if d == 1
    return 'Rev' if d == -1
    return 'Drive'

  $scope.driveClass = (d) ->
    return {
      btn: true
      'btn-success': d != 0
      'btn-secondary': d == 0
      }
