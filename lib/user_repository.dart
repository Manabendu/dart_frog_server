import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:test_dart_frog_server/src/generated/prisma/prisma_client.dart';

class UserRepository {
  UserRepository(this._db);

  final PrismaClient _db;

  Future<User?> authUser(
      {required String username, required String password}) async {
    final user = await _db.user.findFirst(
      where: UserWhereInput(
          username: StringFilter(equals: username),
          password: StringFilter(equals: _hashPassword(password))),
    );

    return user;
  }

  Future<User?> createUser(
      {required String name,
      required String lastName,
      required String username,
      required String password}) async {
    final user = await _db.user.create(
      data: UserCreateInput(
        name: name,
        lastName: lastName,
        username: username,
        password: _hashPassword(password),
      ),
    );

    return user;
  }

  Future<List<User>> getAll() async {
    final list = await _db.user.findMany();
    return list.toList();
  }

  Future<User?> getUserById(String id) async {
    final _user = await _db.user
        .findMany(where: UserWhereInput(id: IntFilter(equals: int.parse(id))));
    if (_user.isEmpty) {
      return null;
    }
    return _user.first;
  }

  Future<bool> checkIfUserNameExist(String username) async {

    final _user = await _db.user.findMany(
      where: UserWhereInput(
        username: StringFilter(equals: username),
      ),
    );
    if(_user.isEmpty){
      return false;
    }
    return true;
  }

  Future<void> deleteUser(String id) async {
    await _db.user.delete(
      where: UserWhereUniqueInput(id: int.parse(id)),
    );
  }

  Future<User?> updateUser({
    required String id,
    String? name,
    String? lastName,
    String? username,
    String? password,
  }) async {
    final updatedUser = await _db.user.update(
      where: UserWhereUniqueInput(id: int.parse(id)),
      data: UserUpdateInput(
        name: name != null ? StringFieldUpdateOperationsInput(set: name) : null,
        lastName: lastName != null
            ? StringFieldUpdateOperationsInput(set: lastName)
            : null,
        username: username != null
            ? StringFieldUpdateOperationsInput(set: username)
            : null,
        password: password != null
            ? StringFieldUpdateOperationsInput(set: _hashPassword(password))
            : null,
      ),
    );

    return updatedUser;
  }

  String _hashPassword(String password) {
    final encodedPassword = utf8.encode(password);
    final hash = sha256.convert(encodedPassword);

    return hash.toString();
  }

  int? fetchFromToken(String token) {
    try {
      final jwt = JWT.verify(token, SecretKey('123456'));
      return jwt.payload as int;
    } on JWTException catch (_) {
      return null;
    }
  }
}
