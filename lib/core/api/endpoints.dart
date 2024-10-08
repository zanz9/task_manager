class EndPoints {
  static const baseUrl = 'https://jsonplaceholder.typicode.com';
  static String todos(int userId) => '/todos?userId=$userId';
}
