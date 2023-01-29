import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter_application_1/model.dart';

abstract class BaseSuruhRemoteDataSource {
  Future<List<SuruhModel>> getSuruh();
}

class SuruhRemoteDataSource extends BaseSuruhRemoteDataSource {
  @override
  Future<List<SuruhModel>> getSuruh() async {
    final res = await Dio().get('https://api.alquran.cloud/v1/surah');
    print(res);
    if (res.statusCode == 200) {
      return List<SuruhModel>.from(
          (res.data["data"]as List ).map((e) => SuruhModel ));
    } else {
      print(e);
      return [];
    }
  }
}
