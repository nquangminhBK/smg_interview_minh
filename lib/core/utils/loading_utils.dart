import 'package:flutter_easyloading/flutter_easyloading.dart';

class LoadingUtils{
  static showLoading(){
    EasyLoading.show(status: 'loading...');
  }
}