

import 'package:fpdart/fpdart.dart';
// import 'package:injectable/injectable.dart';


abstract class INetworkService {
  Future<Either<Error, dynamic>> getHttp ({
    required String path,
    String? parameter,
  });
}