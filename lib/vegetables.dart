import 'fruits.dart';
import 'package:flutter/material.dart';
import 'const.dart';
import 'tickbox.dart';

class VegetablePage extends StatefulWidget {
  const VegetablePage({Key? key}) : super(key: key);

  @override
  State<VegetablePage> createState() => _VegetablePageState();
}

class _VegetablePageState extends State<VegetablePage> {
  List<String> currentStat = Constants.vegetablesMap.keys.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        title: Center(
          child: Text(
            ' V E G E T A B L E S ',
            style: TextStyle(
              fontSize: 25,
              color: Colors.grey[850],
              fontWeight: FontWeight.w400,
              // fontFamily: 'Helvetica',
            ),
          ),
        ),
        // leading: Icon(
        //   Icons.menu,
        //   size: 32,
        // ),
        actions: [
          Icon(
            Icons.share,
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.person,
            size: 35,
          ),
        ],
      ),
      body: Column(
          // mainAxisAlignment: MainAxisAlignment.centre,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: currentStat.length,
              itemBuilder: (context, index) {
                print('Current Stat: $currentStat');

                return TickBox(objectName: currentStat[index]);
              },
            )),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/fruitspage');
              },
              child: Text('buy fruits',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            ),
            SizedBox(height: 40,)
          ]),
    );
  }
}
