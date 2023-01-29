import 'package:flutter_application_1/baserepository.dart';
import 'package:flutter_application_1/datasource.dart';
import 'package:flutter_application_1/model.dart';

class SuruhRepository extends BaseSuruhRepository {
  final BaseSuruhRemoteDataSource baseSuruhRemoteDataSource;

  SuruhRepository(this.baseSuruhRemoteDataSource);
  @override
  Future<List<SuruhModel>> getSuruh() async {
    final res = await baseSuruhRemoteDataSource.getSuruh();
    try {
      return res;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
