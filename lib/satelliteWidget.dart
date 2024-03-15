import 'package:flutter/material.dart';
import 'package:workshopapp/model.dart';

class satelliteWidget extends StatelessWidget {
  Satellite sat;
   satelliteWidget(this.sat,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text('Id-'+sat.id),
              Text('launcher - '+sat.launcher)
            ],
          ),
          Row(
            children: [
              Text('Date-'+sat.launch_date),
              Text('Mass - '+sat.mass),
              Text('Country - '+sat.country)
            ],
          )
        ],
      ),
    );
  }
}