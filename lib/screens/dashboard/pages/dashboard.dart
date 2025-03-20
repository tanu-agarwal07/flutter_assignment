import 'package:flutter/material.dart';
import 'package:flutter_assignment/screens/dashboard/widgets/bike_status_card.dart';
import 'package:flutter_assignment/screens/dashboard/widgets/fault_card.dart';

import '../widgets/battery_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xff778290),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: h*0.5,
              width: w,
              // color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BikeStatusCard(),
                  // SizedBox(width: 16,),
                  FaultsCard()
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: w*0.35,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BatteryStatus(value: '12V', label: 'BATTERY VOLTAGE'),
                      BatteryStatus(value: '56%', label: 'STATE OF CHARGE')
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent,elevation: 3,padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30)),
                    child: Text('Start Repair >>>',style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}