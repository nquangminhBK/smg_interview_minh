import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:minh_interview_project/domain/reporisoty/repository.dart';
import 'package:minh_interview_project/presentation/home_screen/home_screen.dart';
import 'package:minh_interview_project/register_dependencies.dart';
import 'package:provider/provider.dart';

import 'presentation/home_screen/home_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  registerDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
      home: BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(GetIt.I<Repository>()),
        child: const HomeScreen(),
      ),
    );
  }
}
