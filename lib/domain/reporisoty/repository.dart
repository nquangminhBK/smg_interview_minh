import 'package:minh_interview_project/domain/entities/vehicle_entity.dart';

abstract class Repository {
  Future<List<VehicleEntity>> getListVehicle({required int startFrom});
}
