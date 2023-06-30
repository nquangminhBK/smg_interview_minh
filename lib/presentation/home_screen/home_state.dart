import 'package:equatable/equatable.dart';

import '../../domain/entities/vehicle_entity.dart';

class HomeState extends Equatable {
  final List<VehicleEntity> vehicles;

  const HomeState(this.vehicles);

  @override
  List<Object?> get props => [DateTime.now()];
}

class HomeLoadingState extends HomeState {
  final HomeState state;
  final bool isLoading;

  HomeLoadingState({required this.state, required this.isLoading}) : super(state.vehicles);
}

class HomeGetDataErrorState extends HomeState {
  final HomeState state;

  HomeGetDataErrorState({required this.state}) : super(state.vehicles);
}
