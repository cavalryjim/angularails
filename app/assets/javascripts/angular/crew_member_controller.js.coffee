AngulaRails.CrewMemberController = ($scope, Crew, $route, $routeParams) ->
  $scope.crew = Crew.find($routeParams.id)
  $scope.position = $route.current.locals.position

AngulaRails.CrewMemberController.templateUrl = "/assets/crew/show.html"
AngulaRails.CrewMemberController.resolve = 
  position: ($q, $route, $timeout, Crew) ->
    id = $route.current.params.id
    defer = $q.defer()
    $timeout () -> 
      position = Crew.getPosition(id)
      defer.resolve(position)
    , 1000
    
    defer.promise

AngulaRails.controller "CrewMemberController" , AngulaRails.CrewMemberController