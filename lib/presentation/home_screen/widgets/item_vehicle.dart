import 'package:flutter/material.dart';
import 'package:minh_interview_project/core/extensions.dart';
import 'package:minh_interview_project/domain/entities/vehicle_entity.dart';

class ItemVehicle extends StatelessWidget {
  const ItemVehicle({required this.vehicleEntity, Key? key}) : super(key: key);
  final VehicleEntity vehicleEntity;

  @override
  Widget build(BuildContext context) {
    TextStyle style = Theme.of(context)
        .textTheme
        .bodyLarge!
        .copyWith(color: context.currentAppColor.titleTextColor);
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
          Text("Model: ${vehicleEntity.model ?? "unknown"}", style: style),
          Text("Make by: ${vehicleEntity.make}", style: style),
          Text("First registration: ${vehicleEntity.firstRegMonth}/${vehicleEntity.firstRegYear}",
              style: style),
          Text("Price: ${vehicleEntity.price.toString()}", style: style),
          Text("Km: ${vehicleEntity.km.toString()}", style: style),
        ],
      ),
    );
  }
}
