import 'dart:io';
import 'package:dart_frog/dart_frog.dart';
import 'package:test_dart_frog_server/user_repository.dart';
import 'package:test_dart_frog_server/utilities/utility.dart';

Future<Response> onRequest(RequestContext context, String id) async {
  print('id $id');

  final repo = context.read<UserRepository>();

  switch (context.request.method) {
    case HttpMethod.get:
      return _getUserById(repo, id);
    case HttpMethod.put:
      return _updateUser(context, repo, id);
    case HttpMethod.delete:
      return _deleteUser(repo, id);
    default:
      return Future.value(
        Response.json(
          body: {'message': 'Method not allowed'},
          statusCode: HttpStatus.methodNotAllowed,
        ),
      );
  }
}

Future<Response> _getUserById(UserRepository repo, String id) async {
  final user = await repo.getUserById('$id');
  if (user == null) {
    return Response.json(
      body: createResponse(status: false, message: 'User not found for id $id'),
      statusCode: HttpStatus.notFound,
    );
  }
  return Response.json(
      body: createResponse(
          status: true, message: 'Data of user $id', data: user));
}

Future<Response> _updateUser(
    RequestContext context, UserRepository repo, String id) async {
  final json = (await context.request.json()) as Map<String, dynamic>;
  final name = json['name'] as String?;
  final lastName = json['lastName'] as String?;
  final username = json['username'] as String?;
  final password = json['password'] as String?;

  if (name == null &&
      lastName == null &&
      username == null &&
      password == null) {
    return Response.json(
      body: createResponse(
          status: false, message: 'Provide at least one field to update'),
      statusCode: HttpStatus.badRequest,
    );
  }

  final existingUser = await repo.getUserById(id);
  if (existingUser == null) {
    return Response.json(
      body: createResponse(status: false, message: 'User not found'),
      statusCode: HttpStatus.notFound,
    );
  }

  final updatedUser = await repo.updateUser(
    id: id,
    name: name,
    lastName: lastName,
    username: username,
    password: password,
  );

  return Response.json(
    statusCode: HttpStatus.ok,
    body: createResponse(
        status: true, message: 'User updated successfully', data: updatedUser),
  );
}

Future<Response> _deleteUser(UserRepository repo, String id) async {
  final existingUser = await repo.getUserById(id);
  if (existingUser == null) {
    return Response.json(
      body: createResponse(status: false, message: 'User not found'),
      statusCode: HttpStatus.notFound,
    );
  }

  await repo.deleteUser(id);

  return Response.json(
    statusCode: HttpStatus.ok,
    body: createResponse(status: true, message: 'User deleted successfully'),
  );
}
