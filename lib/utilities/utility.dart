Map<String, dynamic> createResponse({
  required bool status,
  required String message,
  dynamic data,
}) {
  return {
    'status': status,
    'message': message,
    'data': data,
  };
}
