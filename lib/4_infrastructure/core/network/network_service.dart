
import 'dart:convert';

import 'package:fpdart/src/either.dart';
import 'package:kios/3_domain/core/exceptions/server_exceptions.dart';
import 'package:kios/4_infrastructure/core/network/i_network_service.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

// * URL BASE platzy : https://api.escuelajs.co/api/v1/products?offset=0&limit=10

class NetworkService implements INetworkService {

  final dio = Dio();

void configureDio() {
  // Set default configs
  dio.options.baseUrl = 'https://api.escuelajs.co/api/v1/products';
  dio.options.connectTimeout = Duration(seconds: 5);
  dio.options.receiveTimeout = Duration(seconds: 3);
}

  @override
  Future<Either<Error, dynamic>> getHttp({required String path, String? parameter}) async {
    // TODO: implement getHttp
    // throw UnimplementedError();
    configureDio();
    final response = await dio.get(path);
    final casting = response.data as List<dynamic>;

    print('hws e1 ${response}');
    print('hws e1 ${response.data}');

    return right(casting);


    // final response = await client.get(
    //   Uri.parse(baseUrl + path),
    //   headers: {'content-type': 'application/json'},
    // );

    // if (response.statusCode != 200) {
    //   throw ServerException();
    // } else {
    //   final responseBody = await json.decode(response.body);

    //   // ProductItem ally = ProductItem.fromJson(responseBody[0]);
    //   // print('\n\n END \n');
    //   // print('RIKO WINNN ${responseBody}');
    //   // print(ally);
    //   return right(responseBody);
    // }
  }
  
}



// ! IF use HTTP Instead
// class NetworkService implements INetworkService {

//   final client = http.Client();
//   String baseUrl = 'https://fakestoreapi.com/products';

//   @override
//   Future<Either<Error, dynamic>> getHttp({required String path, String? parameter}) async {
//     // TODO: implement getHttp
//     // throw UnimplementedError();

//     final response = await client.get(
//       Uri.parse(baseUrl + path),
//       headers: {'content-type': 'application/json'},
//     );

//     if (response.statusCode != 200) {
//       throw ServerException();
//     } else {
//       print('hws e1 ${response.body}');
//       final responseBody = await json.decode(response.body);
//       print('\n\n');
//       print('hws e2 ${responseBody}');
//       // ProductItem ally = ProductItem.fromJson(responseBody[0]);
//       // print('\n\n END \n');
//       // print('RIKO WINNN ${responseBody}');
//       // print(ally);
//       return right(responseBody);
//     }
//   }
  
// }