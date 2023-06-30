import 'package:hive_flutter/hive_flutter.dart';

import '../constants.dart';


class SharedPreferences {
  Box? hiveBox;
  Box<dynamic>? encryptedHiveBox;

  initStorage() async {
    hiveBox = await Hive.openBox(hiveKey);
  }

  dynamic getValue(String key) {
    return hiveBox?.get(key);
  }

  bool checkDataExist(String key) {
    return hiveBox?.get(key) != null;
  }

  setValue(String key, dynamic val) {
    hiveBox?.put(key, val);
  }

  deleteValue(String key) {
    hiveBox?.delete(key);
  }
}
