import 'package:minh_interview_project/data/model/Vehicle_model.dart';
import 'package:minh_interview_project/domain/entities/vehicle_entity.dart';

VehicleEntity mapVehicleModelToEntity(VehicleModel vehicleModel) {
  return VehicleEntity(
      makeId: vehicleModel.makeId ?? 0,
      make: vehicleModel.make ?? "",
      modelId: vehicleModel.modelId,
      model: vehicleModel.model,
      firstRegYear: vehicleModel.firstRegYear ?? 0,
      firstRegMonth: vehicleModel.firstRegMonth ?? 0,
      price: vehicleModel.price ?? 0,
      priceNew: vehicleModel.priceNew ?? 0,
      priceOriginal: vehicleModel.priceOriginal,
      km: vehicleModel.km ?? 0);
}
