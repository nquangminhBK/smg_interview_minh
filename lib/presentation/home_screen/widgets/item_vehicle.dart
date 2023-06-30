import 'package:flutter/material.dart';
import 'package:minh_interview_project/domain/entities/vehicle_entity.dart';

class ItemVehicle extends StatelessWidget {
  const ItemVehicle({required this.vehicleEntity, Key? key}) : super(key: key);
  final VehicleEntity vehicleEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.lightBlue),
      margin: const EdgeInsets.only(left: 10, top: 10, right: 10),
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Model: ${vehicleEntity.model ?? "unknown"}"),
          Text("Make by: ${vehicleEntity.make}"),
          Text("First registration: ${vehicleEntity.firstRegMonth}/${vehicleEntity.firstRegYear}"),
          Text("Price: ${vehicleEntity.price.toString()}"),
          Text("Km: ${vehicleEntity.km.toString()}"),
        ],
      ),
    );
  }
}
