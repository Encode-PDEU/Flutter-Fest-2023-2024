import 'package:flutter/material.dart';
import 'package:workshopapp/model.dart';
import 'package:workshopapp/satelliteWidget.dart';
class SatelliteList extends StatelessWidget {
  List<Satellite> satelliteList;
   SatelliteList(this.satelliteList,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Satellites')),
      body: Container(
        child:SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(children: [
          
          for (int i=0;i<satelliteList.length;i++)
          satelliteWidget(satelliteList[i]),
          

        ]),
        ),
        
      ),
    );
  }
}