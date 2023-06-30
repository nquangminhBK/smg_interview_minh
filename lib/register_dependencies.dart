import 'package:get_it/get_it.dart';
import 'package:minh_interview_project/data/data_source/data_source.dart';

import 'core/http_requester.dart';
import 'data/repository_impl/repository_impl.dart';
import 'domain/reporisoty/repository.dart';

final GetIt locator = GetIt.instance;

void registerDependencies() {
  locator.registerLazySingleton<HttpRequester>(() => HttpRequesterImpl());
  locator.registerLazySingleton<DataSource>(() => DataSourceImpl(GetIt.I<HttpRequester>()));
  locator.registerLazySingleton<Repository>(() => RepositoryImpl(GetIt.I<DataSource>()));
}
