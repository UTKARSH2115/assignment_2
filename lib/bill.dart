import 'package:assignment_2/start.dart';
import 'package:flutter/material.dart';
import 'const.dart';
import 'tickbox.dart';

class BillPage extends StatefulWidget {
  const BillPage({Key? key}) : super(key: key);

  @override
  State<BillPage> createState() => _BillPageState();
}

class _BillPageState extends State<BillPage> {
  final array = DataStore.getArray();

  // Variable to store the final calculated price
  int finalPrice = 0;

  @override
  void initState() {
    // Called when the widget is inserted into the tree
    super.initState();

    // Calculate the total price by summing up individual item prices
    for (int i = 0; i < array.length; i++) {
      finalPrice += DataStore.getPrice(array[i]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight,
        backgroundColor: Colors.deepPurple[300],
        title: Center(
          child: Text(
            ' C H E C K O U T ',
            softWrap: true,
            style: TextStyle(
              fontSize: 25,
              color: Colors.grey[850],
              fontWeight: FontWeight.w400,
              // fontFamily: 'Helvetica',
            ),
          ),
        ),
        // leading: Icon
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
          SizedBox(height: 30,),
          const Text(
            'ITEMS SUMMARY',
            style: TextStyle(color: Colors.black,fontSize: 20),
          ),
          SizedBox(height: 30,),

          Expanded(
            child: ListView.builder(
              itemCount: array.length,
              itemBuilder: (context, index) {
                return Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      array[index],
                      style: const TextStyle(color: Colors.black,fontSize: 20),
                    ),
                    // SizedBox(width: 10,),

                    Text(
                      DataStore.getPrice(array[index]).toString(),
                      style: const TextStyle(color: Colors.black,fontSize: 20),
                    )
                  ],
                );
              },
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'NET AMOUNT',
                style: TextStyle(color: Colors.black,fontSize: 19),
              ),

              Text(
                finalPrice.toString(),
                style: const TextStyle(color: Colors.black,fontSize: 19),
              ),
            ],
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const StartPage()));
                  },
                  child: Text('cancel',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500))),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const StartPage()));
                  },
                  child: Text('Submit',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500))),
            ],
          ),
          SizedBox(height: 40,),

        ],

      ),

    );
  }
}
// ElevatedButton(
//     onPressed: () {
//       Navigator.pushNamed(context, '/startpage');
//     },
//     child: Text('cancel')),
// SizedBox(
//   width: 20,
// ),
// ElevatedButton(
//     onPressed: () {
//       Navigator.pushNamed(context, '/startpage');
//     },
//     child: Text('Submit')),
