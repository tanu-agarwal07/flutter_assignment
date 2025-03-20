import 'package:flutter/material.dart';

class FaultsCard extends StatelessWidget {
  const FaultsCard({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Container(
      height: h*0.5,
      width: w*0.62,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xffF0F6FD),
            Color(0xffCCDAEB),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'FAULTS',
                style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10,),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Color(0xff5D6D80),
                    shape: BoxShape.circle
                ),
                child: Center(child: Text('1',style: TextStyle(color: Colors.white),)),
              ),
            ],
          ),
          SizedBox(height: 10),
          Center(
            child: Image.asset('assets/images/fault_symbol.png',height: h*0.15,),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Color(0xffFA4646),
                        shape: BoxShape.circle
                    ),
                    child: Center(child: Text('01',style: TextStyle(color: Colors.white),)),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'High Throttle',
                        style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Likely throttle connection or\npotentiometer issue',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white,elevation: 3,padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20)),
                child: Text('Troubleshoot',style: TextStyle(color: Colors.redAccent,fontSize: 18),),
              ),
            ],
          ),
          SizedBox(height: 10),
          Divider()

        ],
      ),
    );
  }
}
