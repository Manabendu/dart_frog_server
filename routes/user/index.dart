import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:test_dart_frog_server/user_repository.dart';
import 'package:test_dart_frog_server/utilities/utility.dart';

var response = <String, dynamic>{};

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.get => _getUsers(context),
    HttpMethod.post => _createUser(context),
    _ => Future.value(Response(body: 'This is default'))
  };
}

Future<Response> _getUsers(RequestContext context) async {
  final repo = context.read<UserRepository>();

  final users = await repo.getAll();

  return Future.value(
    Response.json(
      statusCode: HttpStatus.ok,
      body: createResponse(
        status: true,
        message: 'User retrieved successfully',
        data: users,
      ),
    ),
  );
}

Future<Response> _createUser(RequestContext context) async {
  final json = (await context.request.json()) as Map<String, dynamic>;
  final name = json['name'] as String?;
  final lastName = json['lastName'] as String?;
  final username = json['username'] as String?;
  final password = json['password'] as String?;

  if (name == null ||
      lastName == null ||
      username == null ||
      password == null) {
    return Response.json(
      body: createResponse(
          status: false,
          message: 'add name, lastname, username, password',
          data: null),
      statusCode: HttpStatus.badRequest,
    );
  }

  final repo = context.read<UserRepository>();

  bool isUsernameExist = await repo.checkIfUserNameExist(username);

  if (isUsernameExist) {
    print('inside if (isUsernameExist)');
    return Response.json(
      statusCode: HttpStatus.ok,
      body: createResponse(
          status: false,
          message: 'Username exist, Please try with different username',
          data: null),
    );
  }

  final user = await repo.createUser(
      name: name, lastName: lastName, username: username, password: password);

  return Response.json(
      statusCode: HttpStatus.ok,
      body: createResponse(status: true, message: 'saved !', data: user));
}

Future<Response> _findUserById(RequestContext context, String id) async {
  final repo = context.read<UserRepository>();

  final user = await repo.getUserById(id);
  if (user == null) {
    return Response.json(
      body: createResponse(status: false, message: 'User not found'),
      statusCode: HttpStatus.notFound,
    );
  }

  return Response.json(body: user);
}

Future<Response> _updateUser(RequestContext context, String id) async {
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

  final repo = context.read<UserRepository>();
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
    body: createResponse(
        status: true, message: 'User updated successfully', data: updatedUser),
  );
}

Future<Response> _deleteUser(RequestContext context, String id) async {
  final repo = context.read<UserRepository>();
  final existingUser = await repo.getUserById(id);

  if (existingUser == null) {
    return Response.json(
      body:createResponse(status: false, message: 'User not found',),
      statusCode: HttpStatus.notFound,
    );
  }

  await repo.deleteUser(id);

  return Response.json(body: {'message': 'User deleted successfully'});
}

Future<Response> _missingIdResponse() {
  return Future.value(Response.json(
    body: createResponse(status: false, message: 'Missing or invalid user ID in query parameters'),
    statusCode: HttpStatus.badRequest,
  ));
}
