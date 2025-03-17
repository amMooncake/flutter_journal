import 'package:flutter/material.dart';

class AddTrainingScreen extends StatelessWidget {
  const AddTrainingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.greenAccent,
      ),
      child: Center(
        child: Text("Add Training Screen"),
      ),
    );
  }
}
