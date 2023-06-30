import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: const Center(
          child: Text("Loading"),
        ),
      ),
    );
  }
}
