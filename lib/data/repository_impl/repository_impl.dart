import 'package:minh_interview_project/data/data_source/data_source.dart';
import 'package:minh_interview_project/data/mapper/map_vehicle_model_to_entity.dart';
import 'package:minh_interview_project/data/model/Vehicle_model.dart';
import 'package:minh_interview_project/domain/entities/vehicle_entity.dart';
import 'package:minh_interview_project/domain/reporisoty/repository.dart';

class RepositoryImpl extends Repository {
  DataSource dataSource;

  RepositoryImpl(this.dataSource);

  @override
  Future<List<VehicleEntity>> getListVehicle({required int startFrom}) async {
    try {
      List<VehicleModel> models =
          await dataSource.getListVehicleModel(startFrom: startFrom);
      List<VehicleEntity> result = models.map((e) => mapVehicleModelToEntity(e)).toList();
      return result;
    } catch (e) {
      rethrow;
    }
  }
}
