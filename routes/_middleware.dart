import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:test_dart_frog_server/src/generated/prisma/prisma_client.dart';
import 'package:test_dart_frog_server/user_repository.dart';

Handler middleware(Handler handler) { 
  return handler
      .use(
        requestLogger(),
      )
      .use(
        _provideUserRepo(),
      );
}

final _prisma = PrismaClient(
  datasources: Datasources(db: Platform.environment['DATABASE_URL']),
);


Middleware _provideUserRepo() {
  return provider((context) => UserRepository(_prisma));
}
