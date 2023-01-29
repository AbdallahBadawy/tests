import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/baserepository.dart';
import 'package:flutter_application_1/datasource.dart';
import 'package:flutter_application_1/repository.dart';
import 'package:flutter_application_1/usecase.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void initState() {
    super.initState();
    _getData();
  }

  Future<void> _getData() async {
    BaseSuruhRemoteDataSource baseSuruhRemoteDataSource =
        SuruhRemoteDataSource();
    BaseSuruhRepository suruhRepository =
        SuruhRepository(baseSuruhRemoteDataSource);
    final resu = await GetSuruhUseCase(suruhRepository).excute();
    print(resu);
  }
}
