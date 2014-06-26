AngulaRails.controller "BooksController", ($scope,  Book) ->

  $scope.getBooks = () ->
    $scope.books = Book.query()