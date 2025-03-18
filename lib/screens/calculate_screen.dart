import 'package:flutter/material.dart';

class CalculateScreen extends StatelessWidget {
  const CalculateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle variableStyle = TextStyle(fontSize: 70, color: Theme.of(context).colorScheme.primary, height: 1);
    final TextStyle nameStyle = Theme.of(context).textTheme.bodyLarge!.copyWith(height: 1);
    final TextStyle extraDataStyle = TextStyle(fontSize: 30, color: Theme.of(context).colorScheme.secondary, height: 1);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Theme.of(context).colorScheme.onSecondary, Theme.of(context).colorScheme.surfaceBright],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  child: Text(
                "Calculate",
                style: Theme.of(context).textTheme.bodyMedium,
              )),
              SizedBox(height: 40),

              // ==Pace==
              Row(
                children: [
                  Text("Peace", style: nameStyle),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("4'00\"", style: variableStyle),
                  SizedBox(width: 10),
                  Text("15 km/h", style: extraDataStyle),
                ],
              ),
              SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 300,
                child: ListWheelScrollView(
                  itemExtent: 60,
                  children: [
                    ...List.generate(12, (index) {
                      return Container(width: 200, color: Colors.red);
                    })
                  ],
                ),
              ),

              //==Distance==
              Text("Distance", style: nameStyle),
              Text("900 m", style: variableStyle),
              SizedBox(height: 40),

              //==Time==
              Text("Time", style: nameStyle),
              Row(
                children: [
                  Text("1:56:20", style: variableStyle),
                  SizedBox(width: 5),
                  Column(
                    children: [
                      Text("h", style: extraDataStyle.copyWith(fontSize: 20)),
                      Text("m", style: extraDataStyle.copyWith(fontSize: 20)),
                      Text("s", style: extraDataStyle.copyWith(fontSize: 20)),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
