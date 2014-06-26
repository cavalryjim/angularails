AngulaRails.factory "Book", ($resource) ->
  $resource("/books/:id")
  {
  'get':    {method: 'GET'},
  'save':   {method: 'POST'},
  'query':  {method: 'GET', isArray: true},
  'remove': {method: 'DELETE'},
  'delete': {method: 'DELETE'}
  };