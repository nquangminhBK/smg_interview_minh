import 'package:bloc/bloc.dart';
import 'package:minh_interview_project/domain/entities/vehicle_entity.dart';
import 'package:minh_interview_project/presentation/home_screen/home_state.dart';

import '../../domain/reporisoty/repository.dart';

class HomeBloc extends Cubit<HomeState> {
  final Repository repository;

  HomeBloc(this.repository) : super(const HomeState([]));

  addData() async {
    emit(HomeLoadingState(state: state, isLoading: true));
    List<VehicleEntity> currentList = state.vehicles;

    try {
      List<VehicleEntity> vehicles = await repository.getListVehicle(startFrom: currentList.length);
      emit(HomeState([...currentList, ...vehicles]));
    } catch (e) {
      emit(HomeLoadingState(state: state, isLoading: false));
      emit(HomeGetDataErrorState(state: state));
    }
  }
}
