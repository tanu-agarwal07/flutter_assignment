import 'package:flutter/material.dart';

class BatteryStatus extends StatelessWidget {
  final String value;
  final String label;

  const BatteryStatus({super.key, required this.value, required this.label});

  @override
  Widget build(BuildContext context) {

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Container(
      height: h*0.14,
      width: w*0.17,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xffB5C1CF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            value,
            style: TextStyle(color: Color(0xff0E1114), fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15,),
          Text(
            label,
            style: TextStyle(color: Color(0xff3C4450)),
          ),
        ],
      ),
    );
  }
}