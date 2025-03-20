import 'package:flutter/material.dart';
import 'package:flutter_assignment/screens/dashboard/widgets/battery_card.dart';

class BikeStatusCard extends StatelessWidget {
  const BikeStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      height: h*0.5,
      width: w*0.35,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xff44505E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: Color(0xff33E542),
                    shape: BoxShape.circle
                  ),
                ),
                SizedBox(width: 10,),
                Text(
                  'ARMED',
                  style: TextStyle(
                    color: Color(0xff33E542),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Center(
              child: Image.asset('assets/images/bike_image.png',height: h*0.3,),
            ),
            SizedBox(height: 10,),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '2024 DSR/X',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Dual Sport',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
                SizedBox(width: 80),
                Text(
                  'VIN: 219479120142',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}