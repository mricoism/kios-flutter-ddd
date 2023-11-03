
import 'dart:convert';

import 'package:fpdart/src/either.dart';
import 'package:kios/4_infrastructure/core/exceptions/server_exceptions.dart';
import 'package:kios/4_infrastructure/core/network/i_network_service.dart';
import 'package:http/http.dart' as http;


class NetworkService implements INetworkService {

  final client = http.Client();
  String baseUrl = 'https://fakestoreapi.com/products';

  @override
  Future<Either<Error, dynamic>> getHttp({required String path, String? parameter}) async {
    // TODO: implement getHttp
    // throw UnimplementedError();

    final response = await client.get(
      Uri.parse(baseUrl + path),
      headers: {'content-type': 'application/json'},
    );

    if (response.statusCode != 200) {
      throw ServerException();
    } else {
      final responseBody = await json.decode(response.body);

      // ProductItem ally = ProductItem.fromJson(responseBody[0]);
      // print('\n\n END \n');
      // print('RIKO WINNN ${responseBody}');
      // print(ally);
      return right(responseBody);
    }
  }
  
}