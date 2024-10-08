class EndPoints {
  static const baseUrl = 'https://jsonplaceholder.typicode.com';
  static todos(int userId) => '/todos?userId=$userId';
}
