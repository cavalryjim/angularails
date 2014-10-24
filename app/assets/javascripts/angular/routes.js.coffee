AngulaRails.config ($routeProvider) ->
  $routeProvider
    .when "/",
      templateUrl: "/assets/crew/index.html"
      controller: "CrewMembersController"
    .when "/crew/:id",
      templateUrl: AngulaRails.CrewMemberController.templateUrl
      controller: "CrewMemberController"
      resolve: AngulaRails.CrewMemberController.resolve

    .otherwise redirectTo: "/"