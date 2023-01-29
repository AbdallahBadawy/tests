import 'package:flutter_application_1/model.dart';
import 'package:flutter_application_1/baserepository.dart';

class GetSuruhUseCase {
  final BaseSuruhRepository baseSuruhRepository;

  GetSuruhUseCase(this.baseSuruhRepository);
  Future<List<Suruh>> excute() async {
    return await baseSuruhRepository.getSuruh();
  }
}
