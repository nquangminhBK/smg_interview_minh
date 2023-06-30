import 'package:equatable/equatable.dart';

class VehicleEntity extends Equatable {
  final num makeId;
  final String make;
  final dynamic modelId;
  final dynamic model;
  final num firstRegYear;
  final num firstRegMonth;
  final num price;
  final num priceNew;
  final dynamic priceOriginal;
  final num km;

  VehicleEntity({required this.makeId,
    required this.make,
    required this.modelId,
    required this.model,
    required this.firstRegYear,
    required this.firstRegMonth,
    required this.price,
    required this.priceNew,
    required this.priceOriginal,
    required this.km});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [
        makeId,
        make,
        modelId,
        model,
        firstRegYear,
        firstRegMonth,
        price,
        priceNew,
        priceOriginal,
        km
      ];
}
