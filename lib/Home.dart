import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:workshopapp/ApiService.dart';
import 'package:workshopapp/counter.dart';
import 'package:workshopapp/model.dart';
import 'package:workshopapp/satelliteList.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page'),backgroundColor: Colors.red,),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Text('Column 1',
            style: TextStyle(
              fontSize: 20.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold,

            ),),
            Padding(
              //padding: const EdgeInsets.all(28.0),
              padding: EdgeInsets.fromLTRB(30, 10, 20, 100),
              child: Text('Column 2 ',style: TextStyle(fontSize: 26),),
            )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: ()async{
                    List<Satellite> satellites;
                      satellites = await fetchSatellites();
                     Navigator.push(context,MaterialPageRoute(builder: (context) => SatelliteList(satellites),));
                    // Navigator.pushAndRemoveUntil(
                    //   context, MaterialPageRoute(
                    //     builder: (context) => MyHomePage(title: ''),),
                    //      (Route<dynamic>route) => false);
                  },
                  child: Text('Button'))
              ],
            ),
            Row(
              children: [
                Icon(Icons.calculate,size: 100,color: Colors.blue,),
                IconButton(onPressed: null, icon: Icon(Icons.ac_unit))
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  child: Text('This is text'),
                  onLongPress:(){ Navigator.push(context,MaterialPageRoute(builder: (context) => MyHomePage(title: ''),));},
                ),
                ElevatedButton(onPressed: (){
                const snackBar =   SnackBar(
                content: Text('This is snackbar'),
                duration: Duration(seconds: 1),);

                ScaffoldMessenger.of(context).showSnackBar(snackBar);

                }, child: Text('Snackbar')
              ),
              ElevatedButton(onPressed: (){
                AwesomeDialog(
                  context: context,
                  animType: AnimType.scale,
                  dialogType: DialogType.error,
                  title: 'This is Awesome dialogue',
                  desc: 'THis is long description',
                  btnOkOnPress: () {
                    
                  }
                
                ).show();
              }, child: Text('Dialogue'))
              ],
            )
            
          ],
        ),
      ),
      // bottomNavigationBar: Container(
      //   height: 20.h,
      //   color: Colors.brown,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       Icon(Icons.home,size: 20,color: Colors.white,),
      //       Icon(Icons.add_a_photo,size: 50.w,color: Colors.white)
      //     ],
      //   ),
      // ),
    );
  }
}