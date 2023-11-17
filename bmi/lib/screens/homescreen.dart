// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController heightfoot = TextEditingController();
  TextEditingController heightinches = TextEditingController();
  TextEditingController weight = TextEditingController();
  TextEditingController bmicalculatedvalue = TextEditingController();
  void calculateBMI() {
    double feet = double.tryParse(heightfoot.text) ?? 0.0;
    double inches = double.tryParse(heightinches.text) ?? 0.0;
    double kg = double.tryParse(weight.text) ?? 0.0;

    double heightInMeters = (feet * 0.3048) + (inches * 0.0254);

    if (heightInMeters > 0 && kg > 0) {
      double bmi = kg / (heightInMeters * heightInMeters);
      bmicalculatedvalue.text = bmi.toStringAsFixed(2);
    } else {
      bmicalculatedvalue.text = "Invalid input";
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text("BMI Calculator"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          controller: heightfoot,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Height (Foot)"),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          controller: heightinches,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Height (Inches)"),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: weight,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Weight (kg)"),
                    keyboardType: TextInputType.number,
                  ),
                ),
                ElevatedButton(
                    onPressed: calculateBMI, child: Text("Calculate BMI")),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Your BMI is: ${bmicalculatedvalue.text}",
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
