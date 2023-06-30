import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:minh_interview_project/domain/entities/vehicle_entity.dart';
import 'package:minh_interview_project/domain/reporisoty/repository.dart';
import 'package:minh_interview_project/presentation/home_screen/home_bloc.dart';
import 'package:minh_interview_project/presentation/home_screen/home_state.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'home_bloc_test.mocks.dart';

@GenerateNiceMocks([MockSpec<Repository>()])
void main() {
  late MockRepository mockRepository;
  late HomeBloc homeBloc;
  setUp(() {
    mockRepository = MockRepository();
    homeBloc = HomeBloc(mockRepository);
  });

  blocTest(
      "should emit the loading state first when we get the Data, and then emit the Home State ",
      build: () => homeBloc,
      act: (bloc) {
        final List<VehicleEntity> dummyData = [
          VehicleEntity(
              makeId: 1,
              make: "1",
              modelId: 1,
              model: 1,
              firstRegYear: 1,
              firstRegMonth: 1,
              price: 1,
              priceNew: 1,
              priceOriginal: 1,
              km: 1)
        ];
        when(mockRepository.getListVehicle(startFrom: 0)).thenAnswer((_) async => dummyData);
        bloc.addData();
      },
      wait: const Duration(milliseconds: 300),
      expect: () => [
            isA<HomeLoadingState>(),
            HomeState([
              VehicleEntity(
                  makeId: 1,
                  make: "1",
                  modelId: 1,
                  model: 1,
                  firstRegYear: 1,
                  firstRegMonth: 1,
                  price: 1,
                  priceNew: 1,
                  priceOriginal: 1,
                  km: 1)
            ])
          ]);
  blocTest("should hide the loading, and then emit error when request get error ",
      build: () => homeBloc,
      act: (bloc) {
        when(mockRepository.getListVehicle(startFrom: 0)).thenThrow(Exception());
        bloc.addData();
      },
      wait: const Duration(milliseconds: 300),
      expect: () => [
            isA<HomeLoadingState>(),
            isA<HomeGetDataErrorState>(),
          ]);
}
