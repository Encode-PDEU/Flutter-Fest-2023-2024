import 'package:flutter/material.dart';
import 'package:workshopapp/counter.dart';

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
              fontSize: 20,
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
                  onPressed: (){
                    // Navigator.push(context,MaterialPageRoute(builder: (context) => MyHomePage(title: ''),));
                    Navigator.pushAndRemoveUntil(
                      context, MaterialPageRoute(
                        builder: (context) => MyHomePage(title: ''),),
                         (Route<dynamic>route) => false);
                  },
                  child: Text('Button'))
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}