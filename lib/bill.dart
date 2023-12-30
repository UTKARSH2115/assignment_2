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
          const Text(
            'Items Summary',
            style: TextStyle(color: Colors.black),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: array.length,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      array[index],
                      style: const TextStyle(color: Colors.black),
                    ),

                    Text(
                      DataStore.getPrice(array[index]).toString(),
                      style: const TextStyle(color: Colors.black),
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
                    Navigator.pushNamed(context, '/startpage');
                  },
                  child: Text('cancel')),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/startpage');
                  },
                  child: Text('Submit')),
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
