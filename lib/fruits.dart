import 'package:flutter/material.dart';
import 'const.dart';
import 'tickbox.dart';
import 'bill.dart';

class FruitsPage extends StatefulWidget {
  const FruitsPage({super.key});

  @override
  State<FruitsPage> createState() => _FruitsPageState();
}

class _FruitsPageState extends State<FruitsPage> {
  List<String> currentState = Constants.fruitsMap.keys.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        title: Center(
          child: Text(
            ' F R U I T S ',
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
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: currentState.length,
                itemBuilder: (context, index) {

                  return TickBox(
                    objectName: currentState[index],
                  );
                }),
          ),
          Container(
            //color: Colors.blue,
              height: 300,
              width: 300,
              child: Image.asset('lib/pages/fruits.png')),


          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BillPage()));
            },
            child: Text('Checkout',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),


          ),
          SizedBox(height: 40,),
        ],
      ),
    );
  }
}
