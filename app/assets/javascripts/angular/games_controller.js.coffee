AngulaRails.controller "GamesController", ($http, $scope) ->

  $scope.init = () ->
    $scope.currentPage = 1
    $scope.getGames()
  
  $scope.getGames = () ->
    #alert 'hello'
    http = 
      method: "Get"
      url: "/games"
      params:
        page: $scope.currentPage
    $http(http)
      .success (response) ->
        $scope.games = response.games
  
  $scope.setPage = (newPage) ->
    #alert 'hi'
    newPage = 1 if newPage < 1
    
    $scope.currentPage = newPage
    $scope.getGames()
