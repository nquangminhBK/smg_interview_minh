

class VehicleModel {
  VehicleModel({
      num? makeId, 
      String? make, 
      dynamic modelId, 
      dynamic model, 
      num? firstRegYear, 
      num? firstRegMonth, 
      num? price, 
      num? priceNew, 
      dynamic priceOriginal, 
      num? km,}){
    _makeId = makeId;
    _make = make;
    _modelId = modelId;
    _model = model;
    _firstRegYear = firstRegYear;
    _firstRegMonth = firstRegMonth;
    _price = price;
    _priceNew = priceNew;
    _priceOriginal = priceOriginal;
    _km = km;
}

  VehicleModel.fromJson(dynamic json) {
    _makeId = json['makeId'];
    _make = json['make'];
    _modelId = json['modelId'];
    _model = json['model'];
    _firstRegYear = json['firstRegYear'];
    _firstRegMonth = json['firstRegMonth'];
    _price = json['price'];
    _priceNew = json['priceNew'];
    _priceOriginal = json['priceOriginal'];
    _km = json['km'];
  }
  num? _makeId;
  String? _make;
  dynamic _modelId;
  dynamic _model;
  num? _firstRegYear;
  num? _firstRegMonth;
  num? _price;
  num? _priceNew;
  dynamic _priceOriginal;
  num? _km;
VehicleModel copyWith({  num? makeId,
  String? make,
  dynamic modelId,
  dynamic model,
  num? firstRegYear,
  num? firstRegMonth,
  num? price,
  num? priceNew,
  dynamic priceOriginal,
  num? km,
}) => VehicleModel(  makeId: makeId ?? _makeId,
  make: make ?? _make,
  modelId: modelId ?? _modelId,
  model: model ?? _model,
  firstRegYear: firstRegYear ?? _firstRegYear,
  firstRegMonth: firstRegMonth ?? _firstRegMonth,
  price: price ?? _price,
  priceNew: priceNew ?? _priceNew,
  priceOriginal: priceOriginal ?? _priceOriginal,
  km: km ?? _km,
);
  num? get makeId => _makeId;
  String? get make => _make;
  dynamic get modelId => _modelId;
  dynamic get model => _model;
  num? get firstRegYear => _firstRegYear;
  num? get firstRegMonth => _firstRegMonth;
  num? get price => _price;
  num? get priceNew => _priceNew;
  dynamic get priceOriginal => _priceOriginal;
  num? get km => _km;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['makeId'] = _makeId;
    map['make'] = _make;
    map['modelId'] = _modelId;
    map['model'] = _model;
    map['firstRegYear'] = _firstRegYear;
    map['firstRegMonth'] = _firstRegMonth;
    map['price'] = _price;
    map['priceNew'] = _priceNew;
    map['priceOriginal'] = _priceOriginal;
    map['km'] = _km;
    return map;
  }

}