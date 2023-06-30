import 'package:flutter/cupertino.dart';
import 'package:minh_interview_project/core/constants.dart';
import 'package:minh_interview_project/core/http_requester.dart';
import 'package:minh_interview_project/data/model/Vehicle_model.dart';

abstract class DataSource {
  Future<List<VehicleModel>> getListVehicleModel({required int startFrom});
}

class DataSourceImpl extends DataSource {
  HttpRequester httpRequester;

  DataSourceImpl(this.httpRequester);

  @override
  Future<List<VehicleModel>> getListVehicleModel({required int startFrom}) async {
    try {
      final response = await httpRequester.getRequest("?skip=$startFrom&take=$takePerOneRequest");
      List<dynamic> vehicle = response.data['results'];
      List<VehicleModel> result = vehicle.map((e) {
        return VehicleModel.fromJson(e);
      }).toList();
      return result;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
