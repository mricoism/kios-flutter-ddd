

import 'package:injectable/injectable.dart';
import 'package:kios/4_infrastructure/core/network/i_network_service.dart';
import 'package:kios/4_infrastructure/core/network/network_service.dart';

@module
abstract class RegisterModule {
  
  @Named('baseUrl')
  String get baseUrl => 'https://api.escuelajs.co/api/v1/products';

  @preResolve
  @lazySingleton
  Future<INetworkService> network(@Named('baseUrl') String baseUrl) async {
    final client = NetworkService(baseUrl);

    
    return client;
  }
}